#!/usr/bin/env bash
set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: $0 <filename.tex>"
  exit 1
fi

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC_DIR="$ROOT_DIR/src"
BUILD_DIR="$ROOT_DIR/build"
PDF_DIR="$ROOT_DIR/pdfs"
mkdir -p "$BUILD_DIR" "$PDF_DIR"

BASENAME="$(basename "$1" .tex)"

cd "$SRC_DIR"

# Run twice so the table of contents and cross-references resolve correctly.
pdflatex -interaction=nonstopmode -output-directory="$BUILD_DIR" -jobname="$BASENAME" "$BASENAME.tex"
pdflatex -interaction=nonstopmode -output-directory="$BUILD_DIR" -jobname="$BASENAME" "$BASENAME.tex"

cp "$BUILD_DIR/$BASENAME.pdf" "$PDF_DIR/"

echo "Done. Output: $BASENAME.pdf"
