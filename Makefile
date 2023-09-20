pkg_pipeline: update_pkg_setup check_package document_package\
	install_package build_package


install_devtools:
	Rscript -e "install.packages('devtools')"

install_pandoc:
	sudo apt install pandoc

init_setup:
ifeq ($(wildcard ./R/.),)
	Rscript .init_setup.r
else
	@echo "setup was already initialized."
endif


update_pkg_setup:
	Rscript .update_setup.r

setup_github:
	echo "Run .update_github_setup.r in interactive mode and follow the instructions line by line."

test_package:
	Rscript --max-ppsize=500000 -e "devtools::test()"

document_package:
	Rscript -e "devtools::document()"

install_package:
	Rscript -e "devtools::install('.')"

check_package:
	Rscript -e "devtools::check(error_on = 'error')"

build_package:
	Rscript -e "devtools::build('.')"

gh_page:
	Rscript -e "usethis::use_pkgdown()"
	Rscript -e "pkgdown::build_site()"

gh_release:
	Rscript -e "usethis::use_github_release()"
