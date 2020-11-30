#' trade UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_trade_ui <- function(id){
  ns <- NS(id)
  tagList(
    h1("Trade") 
  )
}
    
#' trade Server Function
#'
#' @noRd 
mod_trade_server <- function(input, output, session){
  ns <- session$ns
 
}
    
## To be copied in the UI
# mod_trade_ui("trade_ui_1")
    
## To be copied in the server
# callModule(mod_trade_server, "trade_ui_1")
 
