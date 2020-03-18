setwd('/Users/aksel.henriksen/Documents/R/prosjekter/projtest')
projname <- 'projtest'
# sapply(list.files('R', full.names=TRUE), source)

roxygen::roxygenize(projname)
pkg_pdf()

pkg_data()
pkg_objects()
pkg_check()
r_manual()
pkg_install()
library(projname, character.only=TRUE)

git_commit(msg='Zapped all critical bugs')

git_push()
remotes::install_github('AkselA/R-projtest')