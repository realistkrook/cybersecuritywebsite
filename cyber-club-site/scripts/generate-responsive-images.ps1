param(
    [Parameter(Mandatory=$false)]
    [string]$Source = "media\cyber_security_1.webp",
    [Parameter(Mandatory=$false)]
    [string]$OutputDir = "media"
)

if (!(Test-Path $Source)) {
    Write-Error "Source image not found: $Source"
    exit 1
}

if (!(Test-Path $OutputDir)) { New-Item -ItemType Directory -Path $OutputDir | Out-Null }

$base = [System.IO.Path]::GetFileNameWithoutExtension($Source)
$ext = [System.IO.Path]::GetExtension($Source)

$sizes = @(
    @{name='small';  width=640},
    @{name='medium'; width=1024},
    @{name='large';  width=1600}
)

foreach ($s in $sizes) {
    # WebP output
    $outWebP = Join-Path $OutputDir ("$base-$($s.name).webp")
    Write-Output "Generating $outWebP (${s.width}px) (WebP)..."
    magick "$Source" -strip -resize ${s.width}x -quality 80 "$outWebP"

    # AVIF output (if delegate available in ImageMagick)
    $outAvif = Join-Path $OutputDir ("$base-$($s.name).avif")
    Write-Output "Generating $outAvif (${s.width}px) (AVIF)..."
    magick "$Source" -strip -resize ${s.width}x -quality 60 "$outAvif"
}

Write-Output "Done. Generated variants in $OutputDir"