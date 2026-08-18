#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC_DIR="$ROOT_DIR/src"
BUILD_DIR="$ROOT_DIR/build"
mkdir -p "$BUILD_DIR"

cd "$SRC_DIR"

# Run twice so the table of contents and cross-references resolve correctly.
pdflatex -interaction=nonstopmode -output-directory="$BUILD_DIR" -jobname=cse751 main.tex
pdflatex -interaction=nonstopmode -output-directory="$BUILD_DIR" -jobname=cse751 main.tex

cp "$BUILD_DIR/cse751.pdf" "$ROOT_DIR/"

echo "Done. Output: cse751.pdf"