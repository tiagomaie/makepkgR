
# Create a new package -------------------------------------------------
path <- file.path(".")


# only needed since this session isn't interactive
usethis::proj_activate(path)


# Modify the DESCRIPTION ----------------------------------------------
usethis::use_package_doc()

usethis::use_mit_license()

usethis::use_package(package = "dplyr")
usethis::use_package(package = "assertthat")
usethis::use_package(package = "testthat")
usethis::use_package(package = "ggplot2")
usethis::use_package(package = "grDevices", type = "Suggests")
usethis::use_dev_package(package = "Biobase", type = "Suggests", remote = "bioc::Biobase")

# Import specific functions ------------------------------------------
usethis::use_import_from("dplyr", "%>%")
usethis::use_import_from("grDevices", c("colorRampPalette", "dev.off", "pdf", "png"))


# Set up other files -------------------------------------------------
usethis::use_readme_md()

usethis::use_news_md()

proj_name <- usethis::proj_path() |> basename()
usethis::use_test(proj_name)

set.seed(42)
tmp_y <- LETTERS[sample.int(n = length(LETTERS), size = 100, replace = TRUE)]
dataset_A <- data.frame(pos = 1:100, y = tmp_y)

tmp_y <- c("A","C","T","G")[sample.int(n = 4, size = 100, replace = TRUE)]
dataset_B <- data.frame(pos = 1:100, nucleotide = tmp_y)

usethis::use_data(dataset_A, dataset_B, overwrite = TRUE)

# Use git ------------------------------------------------------------
usethis::use_git()

# Ignore files -------------------------------------------------------
usethis::use_build_ignore(c("Makefile",".init_setup.r",".update_setup.r",".update_github_setup.r"))

