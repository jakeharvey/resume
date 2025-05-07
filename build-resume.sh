#!/bin/sh

set -e

if [ "$1" = "--docker" ]; then
  echo "🐳 Running inside Docker container..."
  docker run --rm -v "$PWD":/data resume-builder
  exit 0
fi

echo "🖨️ Generating PDF resume..."
pandoc stub.md \
  --metadata-file=resume-expanded.yaml \
  --template=resume-template.tex \
  -o resume.pdf \
  --pdf-engine=xelatex

echo "📝 Generating Markdown resume..."
pandoc stub.md \
  --metadata-file=resume-expanded.yaml \
  --template=resume-template.md \
  -o resume.md

echo "✅ Done: resume.pdf and resume.md generated."
