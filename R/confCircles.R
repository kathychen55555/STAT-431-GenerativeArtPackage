#' Returns a plot of randomly generated circle(s)
#'
#' @param plot the plot to which to apply the circles
#' @param n the number of circles
#' @param color the color of the circles
#' @param size the size of the circles
#'
#' @return a scatterplot of circles
#'
#' @import ggplot2
#'
#' @export



confetti_circle <- function(plot, n, color = "red", size = 2) {
  random_points <- data.frame(x = runif(n, min = -1, max = 1),
                              y = runif(n, min = -1, max = 1))

  plot <- plot +
    geom_point(data = random_points, aes(x = x, y = y), shape = 19, color = color, size = size)

  return(plot)
}













