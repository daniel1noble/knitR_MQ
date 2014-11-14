library(knitr)
knit('text/ms.Rmd', output=file.path(getwd(), 'docs/ms.md'), quiet=TRUE, encoding = 'utf-8')

# to word
system('pandoc -o docs/ms.docx docs/ms.md -s -S --bibliography library.bib --csl plos-biology.csl')

# to pdf
system('pandoc docs/ms.md -o text/ms.pdf -s -S --bibliography library.bib --csl plos-biology.csl')
