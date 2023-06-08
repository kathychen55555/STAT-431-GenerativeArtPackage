#' Returns a plot of randomly generated star(s)
#'
#' @param plot the plot to which to apply the stars
#' @param n the number of stars
#' @param color the color of the stars
#' @param size the size of the stars
#'
#' @return a scatterplot of stars
#'
#' @export


confetti_star <- function(plot, n, color = "red", size = 2) {
  random_points <- data.frame(x = runif(n, min = -1, max = 1),
                              y = runif(n, min = -1, max = 1))

  plot <- plot +
    geom_point(data = random_points, aes(x = x, y = y), shape = 8, color = color, size = size)

  return(plot)
}

