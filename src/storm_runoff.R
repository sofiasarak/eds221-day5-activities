# Calculating volume of stormwater expected for a watershed 
#' Using the Simple Method
#'
#' @param I Fraction of the watershed that is considered "impervious," or unitless (numeric).
#' @param watershed_area Watershed area in acres (numeric).
#'
#' @returns V, or volume of stormwater that needs to be handled in cubic feet.
#' @export
#'
#' @examples predict_runoff(I = 0.2, watershed_area = 1600)
predict_runoff <- function(I, watershed_area){
  runoff_coefficient <- 0.05 + (0.9 * I)
  V <- 3630 * 1 * runoff_coefficient * watershed_area
  return(V)
}