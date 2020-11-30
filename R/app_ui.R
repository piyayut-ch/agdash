#' The application User-Interface
#' 
#' @param request Internal parameter for `{shiny}`. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # List the first level UI elements here 
    bs4Dash::bs4DashPage(
      title = "Basic Dashboard",
      sidebar_min = TRUE,
      sidebar_collapsed = FALSE,
      controlbar_collapsed = TRUE,
      controlbar_overlay = TRUE,
      navbar = bs4Dash::bs4DashNavbar(),
      sidebar = bs4Dash::bs4DashSidebar(
        title = "สินค้าเกษตร",
        skin = "light",
        bs4Dash::bs4SidebarMenu(
          bs4Dash::bs4SidebarHeader("รายการ"),
          bs4Dash::bs4SidebarMenuItem(
            "ภาพรวม",
            tabName = "home",
            icon = "desktop"
          ),
          bs4Dash::bs4SidebarMenuItem(
            "การผลิต",
            tabName = "production",
            icon = "tractor"
          ),
          bs4Dash::bs4SidebarMenuItem(
            "ราคา",
            tabName = "price",
            icon = "money-bill-alt"
          ),
          bs4Dash::bs4SidebarMenuItem(
            "การค้า",
            tabName = "trade",
            icon = "globe-asia"
          )
        )
      ),
      controlbar = bs4Dash::bs4DashControlbar(),
      footer = bs4Dash::bs4DashFooter(),
      body = bs4Dash::bs4DashBody(
        bs4Dash::tabItems(
          bs4Dash::tabItem(
            "home", mod_home_ui("home_ui_1")
          ),
          bs4Dash::tabItem(
            "production", mod_production_ui("production_ui_1")
          ),
          bs4Dash::tabItem(
            "price", mod_price_ui("price_ui_1")
          ),
          bs4Dash::tabItem(
            "trade", mod_trade_ui("trade_ui_1")
          )
        )
      )
    )
  )
}

#' Add external Resources to the Application
#' 
#' This function is internally used to add external 
#' resources inside the Shiny application. 
#' 
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function(){
  
  add_resource_path(
    'www', app_sys('app/www')
  )
 
  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys('app/www'),
      app_title = 'agdash'
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert() 
  )
}

