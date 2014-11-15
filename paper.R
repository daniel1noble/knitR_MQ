library(knitr)
knit('docs/ms.Rmd', output='docs/ms.md', quiet=TRUE, encoding = 'utf-8')

# to word
system('pandoc -o docs/ms.docx docs/ms.md -s -S --bibliography library.bib --csl plos-biology.csl -H ms.sty')

# to pdf
system('pandoc docs/ms.md -o docs/ms.tex -s -S --bibliography library.bib --csl plos-biology.csl -H ms.sty')
x  <-  readLines('docs/ms.tex')
# insert the float package
x  <-  sub('(\\\\begin\\{document\\})', '\\\\usepackage{float}\n\\1', x)
# add the H option for all figures
x  <-  gsub('(\\\\begin\\{figure\\})', '\\1[H]', x)
# write the processed tex file back
writeLines(x, 'docs/ms.tex')
# compile to pdf
system('pandoc docs/ms.tex -o docs/ms.pdf -s -S --bibliography library.bib --csl plos-biology.csl -H ms.sty')
system('rm -rf figure/')

