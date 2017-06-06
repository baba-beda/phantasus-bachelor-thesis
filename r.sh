#!/bin/bash

pdflatex -halt-on-error bachelor-thesis
biber 	 bachelor-thesis
pdflatex -halt-on-error bachelor-thesis
pdflatex -halt-on-error bachelor-thesis

rm bachelor-thesis.{aux,log,bbl,bcf,blg,run.xml,toc,tct}

pdftk bachelor-thesis.pdf cat 1-2 output build/title-page.pdf
#pdftk bachelor-thesis.pdf cat 3-4 output build/specification.pdf
#pdftk bachelor-thesis.pdf cat 5-6 output build/annotation.pdf
pdftk bachelor-thesis.pdf cat 3-end output build/thesis.pdf

