library(shiny)
library(shinydashboard)
library(shinydashboardPlus)

dashboardPagePlus(
    dashboardHeaderPlus(
        enable_rightsidebar = TRUE,
        rightSidebarIcon = "gears"
    ),
    dashboardSidebar(
    ),
    dashboardBody(
        tags$head(tags$link(href = "www/styles.css"))
    ),
    rightSidebar(
        background = "dark",
        rightSidebarTabContent(
            id = 1,
            title = "Tab 1",
            icon = "desktop",
            active = TRUE,
            sliderInput(
                "obs",
                "Number of observations:",
                min = 0, max = 1000, value = 500
            )
        )
    ),
    title = "Right Sidebar"
)
