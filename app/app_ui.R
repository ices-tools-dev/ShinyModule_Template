
app_ui <- function(request) {
  tagList(
    # External resources
    tags$head(
    tags$link(rel = "shortcut icon", href = "www/fishriesXplorer_PNG.png"),
    includeHTML("www/google-analytics.html"),
    #bundle_resources(
    #  path = system.file("app/www", package = "fisheriesXplorer"),
    #  app_title = "fisheriesXplorer"
    #),
    tags$style(HTML("#custom_slider .shiny-input-container { margin-top: 0px !important; }")),
    tags$script(HTML("
      document.addEventListener('DOMContentLoaded', function() {
        document.querySelectorAll('.collapse-toggle').forEach(btn => {
          btn.setAttribute('title', 'Open/close sidebar for figure captions and results description');
        });
      });
    ")),
    tags$link(rel = "stylesheet", type = "text/css", href = "css/gothic-a1.css"),
    tags$style("body {font-family: 'Gothic A1', sans-serif;}"),
    tags$link(rel = "stylesheet", type = "text/css", href = "www/styles.css"),
    tags$script(src = "www/copy.js"),
    shinyjs::useShinyjs()
  ),
    title_html <- tags$a(
      href = "https://www.ices.dk/Pages/default.aspx",
      tags$img(
        src = "www/negative_ices_logo.png",
        style = "margin-top: -15px; margin-bottom: 0px; padding-right:10px;",
        height = "50px"
      )
    ),

    # {shinycssloaders} options (if you use them)
    options(
      spinner.type = 5,
      spinner.color = "#00B6F1",
      spinner.size = 0.7
    ),

    # Fullscreen helper
    tags$script(HTML("
      function toggleFullScreen(elem) {
        if (!document.fullscreenElement) {
          elem.requestFullscreen().catch(err => {
            alert('Error attempting to enable fullscreen: ' + err.message);
          });
        } else {
          document.exitFullscreen();
        }
      }
    ")),
    navbarPage(
      title = title_html,
      position = "static-top",
      collapsible = TRUE,
      fluid = TRUE,
      windowTitle = "fisheriesXplorer",
      id = "nav-page",
      # theme = bslib::bs_theme(version = 5),
      tabPanel("Template", value = "template", mod_navigation_page_ui("template_1")),

      # push right
      bslib::nav_spacer(),

      # Share button: use actionButton (NOT bookmarkButton)
      bslib::nav_item(
        actionButton("share_btn",
          label = "Share",
          icon = icon("link"),
          class = "btn btn-default",
          style = "margin-right: 8px;"
        )
      )
    )
  )
}
