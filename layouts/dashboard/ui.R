library(shiny)
library(shinydashboard)

dashboardPage(
  dashboardHeader(),
  dashboardSidebar(),
  dashboardBody(
      tags$head(tags$link(href = "www/styles.css"))
  )
)
