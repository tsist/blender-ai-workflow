param(
    [string]$SourceRoot = (Join-Path (Split-Path -Parent $PSScriptRoot) 'skills'),
    [string[]]$MirrorRoots = @(
        (Join-Path $HOME '.codex\skills'),
        (Join-Path $HOME '.agents\skills')
    ),
    [string[]]$SkillNames = @()
)

$ErrorActionPreference = 'Stop'

if (!(Test-Path -LiteralPath $SourceRoot -PathType Container)) {
    throw "Source skills root missing: $SourceRoot"
}

$sourceDirs = if ($SkillNames.Count -gt 0) {
    foreach ($n in $SkillNames) {
        $p = Join-Path $SourceRoot $n
        if (!(Test-Path -LiteralPath $p -PathType Container)) { throw "Skill missing in source: $p" }
        Get-Item -LiteralPath $p
    }
} else {
    Get-ChildItem -LiteralPath $SourceRoot -Directory
}

$results = @()
foreach ($dir in $sourceDirs) {
    $name = $dir.Name
    $srcSkillMd = Join-Path $dir.FullName 'SKILL.md'
    if (!(Test-Path -LiteralPath $srcSkillMd -PathType Leaf)) { continue }
    $srcSha = (Get-FileHash -LiteralPath $srcSkillMd -Algorithm SHA256).Hash

    foreach ($mirrorRoot in $MirrorRoots) {
        New-Item -ItemType Directory -Path $mirrorRoot -Force | Out-Null
        $dest = Join-Path $mirrorRoot $name
        if (Test-Path -LiteralPath $dest) {
            $item = Get-Item -LiteralPath $dest -Force
            if ($item.Attributes -band [System.IO.FileAttributes]::ReparsePoint) {
                $item.Delete()
            } else {
                Remove-Item -LiteralPath $dest -Recurse -Force
            }
        }
        Copy-Item -LiteralPath $dir.FullName -Destination $dest -Recurse -Force
        Get-ChildItem -LiteralPath $dest -Recurse -Directory -Filter '__pycache__' -ErrorAction SilentlyContinue | Remove-Item -Recurse -Force
        $dstSha = (Get-FileHash -LiteralPath (Join-Path $dest 'SKILL.md') -Algorithm SHA256).Hash
        if ($srcSha -ne $dstSha) {
            throw "SHA256 mismatch after sync for $name -> $dest"
        }
    }
    $results += [pscustomobject]@{
        Skill  = $name
        SHA256 = $srcSha.Substring(0, 12)
        Status = 'SYNCED'
    }
}

$results | Format-Table -AutoSize
Write-Output ("Synced {0} skills from {1} to {2} mirror roots." -f $results.Count, $SourceRoot, $MirrorRoots.Count)
