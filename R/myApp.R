# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

library(shiny)

ui <- function(...) {
ui <- fluidPage(
      "Main branch"
)
}

server <- function(input, output) {

}

run_PKG_app <- function() {
  shinyApp(ui = ui, server = server)
}
