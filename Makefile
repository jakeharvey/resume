
all: resume.pdf resume.md

resume.pdf:
	pandoc resume.md --metadata-file=resume-expanded.yaml --template=resume-template.tex -o resume.pdf --pdf-engine=xelatex

resume.md:
	pandoc resume.md --metadata-file=resume-expanded.yaml --template=resume-template.md -o resume.md
