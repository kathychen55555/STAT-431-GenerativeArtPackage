#' Returns a plot of a random shape
#'
#' @param shape the plot object of the randomly generated shape
#' @param shape_color the fill color of the shape
#' @param background_color the color of the background of the plot
#'
#' @return a modified plot of the shape
#'
#' @export



add_color_to_shape <- function(shape, shape_color, background_color) {
  # Modify the aesthetics to change shape color
  shape <- shape +
    geom_polygon(fill = shape_color, color = "black")

  # Add background color
  shape <- shape +
    theme(plot.background = element_rect(fill = background_color))

  # Return the modified shape
  shape

}
