app_server <- function(input, output, session) {

  # ------------------------
  # Date bits (refactor all the dates here?)
  # ------------------------
  app_date <- strsplit(date(), " ")[[1]]
  cap_year <- app_date[5]
  cap_month <- app_date[2]

  # ------------------------
  # Shared app state
  # ------------------------
  selected_ecoregion <- reactiveVal(NULL)

  # Track whether we're restoring from URL (suspends writer)
  is_restoring <- reactiveVal(TRUE)

  # One-time desired state from URL
  desired <- reactiveVal(NULL)

  selected_stock <- reactiveVal(NULL)

  mod_template_server(
    "template_1"
  )

}
