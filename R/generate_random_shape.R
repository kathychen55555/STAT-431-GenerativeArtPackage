#' Returns a plot of a random shape
#'
#' @param num_points the the number of points in the shape
#' @param num_cycles the number of cycles that shape has
#'
#' @return a plot of the random shape
#'
#' @import ggplot2
#'
#' @export


generate_random_shape <- function(num_points, num_cycles) {
  # Generate random angles
  angles <- seq(0, 2 * pi, length.out = num_points)

  # Generate random radii
  radii <- runif(num_points, min = 0, max = 1)

  # Generate x and y coordinates using sine and cosine
  x <- radii * cos(angles * num_cycles)
  y <- radii * sin(angles * num_cycles)

  # Create a data frame with the coordinates
  df <- data.frame(x = x, y = y)

  # Create the plot without colors
  plot <- ggplot(df, aes(x = x, y = y)) +
    geom_polygon(fill = "white", color = "black") +
    coord_equal(xlim = c(-1, 1), ylim = c(-1, 1)) +
    theme_void()

  # Return the plot
  plot
}







