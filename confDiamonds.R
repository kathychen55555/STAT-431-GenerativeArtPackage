#' Returns a plot of randomly generated diamond(s)
#'
#' @param plot the plot to which to apply the diamonds
#' @param n the number of diamonds
#' @param color the color of the diamonds
#' @param size the size of the diamonds
#'
#' @return a scatterplot of diamonds
#'
#'@export


confetti_diamond <- function(plot, n, color = "red", size = 2) {
  random_points <- data.frame(x = runif(n, min = -1, max = 1),
                              y = runif(n, min = -1, max = 1))

  plot <- plot +
    geom_point(data = random_points, aes(x = x, y = y), shape = 18, color = color, size = size)

  return(plot)
}

