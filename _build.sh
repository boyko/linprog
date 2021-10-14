#!/bin/sh

# docker build -t linprog_book .

set -ev

Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"
mv _book docs
# Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"
# Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::epub_book')"

