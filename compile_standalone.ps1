param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$FileName
)

$ErrorActionPreference = "Stop"

$ROOT_DIR = $PSScriptRoot
$SRC_DIR = Join-Path $ROOT_DIR "src"
$BUILD_DIR = Join-Path $ROOT_DIR "build"
$PDF_DIR = Join-Path $ROOT_DIR "pdfs"
New-Item -ItemType Directory -Force -Path $BUILD_DIR | Out-Null
New-Item -ItemType Directory -Force -Path $PDF_DIR | Out-Null

$BASENAME = [System.IO.Path]::GetFileNameWithoutExtension($FileName)

Push-Location $SRC_DIR
try {
    # Run twice so the table of contents and cross-references resolve correctly.
    pdflatex -interaction=nonstopmode -output-directory="$BUILD_DIR" -jobname="$BASENAME" "$BASENAME.tex"
    pdflatex -interaction=nonstopmode -output-directory="$BUILD_DIR" -jobname="$BASENAME" "$BASENAME.tex"
}
finally {
    Pop-Location
}

Copy-Item -Path (Join-Path $BUILD_DIR "$BASENAME.pdf") -Destination $PDF_DIR -Force

Write-Host "Done. Output: $BASENAME.pdf"
