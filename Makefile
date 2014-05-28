SLIDES_OPTS  = --template vzg-slides.tex --toc
SLIDES_OPTS += --slide-level 2 -t beamer -V documentclass=beamer

slides.pdf: slides.md vzg-slides.tex
	pandoc -s -S $(SLIDES_OPTS) -o $@ $<
