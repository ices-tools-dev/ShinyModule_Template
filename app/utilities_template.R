# contributors should provide functions that generate content for the template page, such as:
# several functions are available via an R package: icesUtils, such as: get_ecoregion_acronym().

#' Generate filename for download bundle
#'
#' @param selected_ecoregion A reactive or function returning the selected ecoregion.
#' @param ... Additional arguments passed to the function.
#'
template_bundle_filename <- function(selected_ecoregion, ...) {
  function() {
    ecoregion <- selected_ecoregion()
    #acronym  <- get_ecoregion_acronym(ecoregion)
    date_tag <- format(Sys.Date(), "%d-%b-%y")
    paste0("template_", "_data_bundle_", date_tag, ".zip")
  }
}

#' Bundle vms content for download, either effort or sar data
#'
#' @param selected_ecoregion reactive value
#' @param ... Additional arguments passed to the function.
#'
vms_bundle_content <- function(selected_ecoregion, ...) {

}


#' Function to find and display images from www/ folder
#'
#' @param ecoregion character
#' @param ... Additional arguments passed to the function.
#' @param ns namespace from server definition
#'
render_template <- function(ecoregion,..., ns){

}
