
# YAML-Driven Resume Generator

This project lets you maintain your resume in a structured YAML file, then generate:
- A beautifully formatted PDF (via LaTeX)
- A clean, copy-pasteable Markdown version

It uses [Pandoc](https://pandoc.org) and XeLaTeX under the hood, and provides an easy shell script interface for both local and Docker-based builds.

## 📁 Files

- `resume-expanded.yaml`: All resume content, structured and reusable
- `resume-template.tex`: LaTeX template for PDF output
- `resume-template.md`: Markdown template for text output
- `stub.md`: Placeholder file used to satisfy Pandoc input requirements
- `resume.md`: Generated Markdown output
- `resume.pdf`: Generated PDF output
- `Makefile`: Optional traditional build mechanism
- `build-resume.sh`: Simple CLI script to build everything locally or in Docker

## 🛠️ Prerequisites (for local builds)

- [Pandoc](https://pandoc.org)
- `xelatex` from a TeX distribution (e.g., MacTeX, TeX Live)

## 🚀 Usage

### 🖥️ Local Build

To generate both `resume.pdf` and `resume.md`:

```bash
./build-resume.sh
```

### 🐳 Docker Build

To build everything inside a Docker container (no Pandoc/LaTeX required on your system):

1. First build the image:

```bash
docker build -t resume-builder .
```

2. Then run the script with the `--docker` flag:

```bash
./build-resume.sh --docker
```

The outputs will appear in your current directory.

## 📝 Optional: Makefile

You can also use the included `Makefile` if you prefer traditional `make`-based builds:

```bash
make           # builds both PDF and Markdown
make resume.md
make resume.pdf
```
