
all: resume.pdf resume.md

resume.pdf:
	pandoc empty.md --metadata-file=resume-expanded.yaml --template=resume-template.tex -o resume.pdf --pdf-engine=xelatex

resume.md:
	pandoc empty.md --metadata-file=resume-expanded.yaml --template=resume-template.md -o resume.md
