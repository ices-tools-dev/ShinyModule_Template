mod_template_ui <- function(id) {
  ns <- NS(id)

  tagList(
    mod_flex_header_ui(ns, "ecoregion_label", "current_date"),
    uiOutput(ns("hello_world"))
  )
}


mod_template_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

    output$hello_world <- renderUI({
      div(
        class = "sidebar-text",
        HTML("<h3>Hello world!</h3><p>This is a template module.</p>")
      )
    })
  })
}
