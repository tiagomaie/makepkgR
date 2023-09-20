###########################
# RUN IN INTERACTIVE MODE #
###########################

usethis::proj_activate(".")
usethis::gh_token_help()

usethis::create_github_token() # opens browser window

# Get your github token from the previous window, it should look something like this:
## ghp_N2nFFdBMJPY335fOsAHmit0o6XAIHE3YgoRB

# Set your github token:
gitcreds::gitcreds_set()

#usethis::git_default_branch_configure(name = "master")

# Commit something to your local repo!
# eg:
## git add DESCRIPTION
## git commit -m "initial commit"

usethis::use_github()

# you may need to check if your main branch is called 'master' or 'main'
usethis::use_github_pages(branch="master", path="/docs")

