$ErrorActionPreference = "Stop"

$ROOT_DIR = $PSScriptRoot
$SRC_DIR = Join-Path $ROOT_DIR "src"
$BUILD_DIR = Join-Path $ROOT_DIR "build"
New-Item -ItemType Directory -Force -Path $BUILD_DIR | Out-Null

Push-Location $SRC_DIR
try {
    # Run twice so the table of contents and cross-references resolve correctly.
    pdflatex -interaction=nonstopmode -output-directory="$BUILD_DIR" -jobname=cse751 main.tex
    pdflatex -interaction=nonstopmode -output-directory="$BUILD_DIR" -jobname=cse751 main.tex
}
finally {
    Pop-Location
}

Copy-Item -Path (Join-Path $BUILD_DIR "cse751.pdf") -Destination $ROOT_DIR -Force

Write-Host "Done. Output: cse751.pdf"
