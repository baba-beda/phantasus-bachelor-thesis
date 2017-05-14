#!/bin/bash

pdflatex bachelor-thesis
biber 	 bachelor-thesis
dflatex bachelor-thesis
pdflatex bachelor-thesis

rm bachelor-thesis.{bib,aux,log,bbl,bcf,blg,run.xml,toc,tct}
