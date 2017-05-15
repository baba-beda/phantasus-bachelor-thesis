#!/bin/bash

pdflatex bachelor-thesis
biber 	 bachelor-thesis
pdflatex bachelor-thesis
pdflatex bachelor-thesis

rm bachelor-thesis.{aux,log,bbl,bcf,blg,run.xml,toc,tct}

pdftk bachelor-thesis.pdf cat 1-2 output build/title.pdf
pdftk bachelor-thesis.pdf cat 3-4 output build/specification.pdf
pdftk bachelor-thesis.pdf cat 5-6 output build/annotation.pdf
pdftk bachelor-thesis.pdf cat 7-end output build/thesis.pdf
