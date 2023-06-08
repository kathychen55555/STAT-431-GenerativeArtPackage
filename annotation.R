#' Returns a string annotation
#'
#' @param art the plot
#' @param text string of text
#' @param size the size of the font
#'
#' @return a scatterplot of circles
#'
#' @export



add_text <- function(art, text, size) {
  art <- art +
    annotate("text", x = 0.5, y = 1, label = text, hjust = 0.5, vjust = 0.5, size = size)
  return(art)
}
