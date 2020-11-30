#' price UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_price_ui <- function(id){
  ns <- NS(id)
  tagList(
    h1("Price") 
  )
}
    
#' price Server Function
#'
#' @noRd 
mod_price_server <- function(input, output, session){
  ns <- session$ns
 
}
    
## To be copied in the UI
# mod_price_ui("price_ui_1")
    
## To be copied in the server
# callModule(mod_price_server, "price_ui_1")
 
