
# Create a new package -------------------------------------------------
path <- file.path(".")
usethis::create_package(
  path = path,
  fields = list(
    "Authors@R" = utils::person(
      given = "Tiago", family = "Maié",
      email = "tiagomaie+Rdev@example.com",
      role = c("aut", "cre")
    ),
    Language =  "en",
    License = "MIT + file LICENSE"
  )
)

# only needed since this session isn't interactive
usethis::proj_activate(path)

