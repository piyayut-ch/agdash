#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  # List the first level callModules here
  callModule(mod_home_server, "home_ui_1")
  callModule(mod_production_server, "production_ui_1")
  callModule(mod_price_server, "price_ui_1")
  callModule(mod_trade_server, "trade_ui_1")

}
