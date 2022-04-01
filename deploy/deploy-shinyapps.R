rsconnect::setAccountInfo(
  Sys.getenv("SHINYAPPS_ACC_NAME"),
  Sys.getenv("SHINYAPPS_TOKEN"),
  Sys.getenv("SHINYAPPS_SECRET")
)

# Used to deply via Github Actions
rsconnect::deployApp(
  appName = Sys.getenv("SHINYAPPS_NAME"),
  # exclude hidden files and renv directory (if present)
  appFiles = setdiff(list.files(), "renv")
)

# To deploy to main ----
rsconnect::deployApp(
  appName = Sys.getenv("SHINYAPPS_NAME_MAIN"),
  # exclude hidden files and renv directory (if present)
  appFiles = setdiff(list.files(), "renv"),
  account = Sys.getenv("SHINYAPPS_ACC_NAME")
)

# To deploy to development ----
rsconnect::deployApp(
  appName = Sys.getenv("SHINYAPPS_NAME_DEV"),
  # exclude hidden files and renv directory (if present)
  appFiles = setdiff(list.files(), "renv")
)
