library(ggplot2)

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





generateRandomShape <- function(num_points) {
  # Initialize empty lists for x and y coordinates
  x_coords <- c()
  y_coords <- c()

  # Generate random coordinates for the shape
  for (i in 1:num_points) {
    # Generate random x and y coordinates between 0 and 1
    x <- runif(1)
    y <- runif(1)

    # Append the coordinates to the lists
    x_coords <- c(x_coords, x)
    y_coords <- c(y_coords, y)
  }

  # Create a data frame from the coordinates
  shape_data <- data.frame(x = x_coords, y = y_coords)

  # Generate a plot of the shape
  plot <- ggplot(shape_data, aes(x, y)) +
    geom_polygon(fill = "white", color = "black") +
    theme_void() +
    theme(plot.margin = margin(0, 0, 0, 0))
  return(plot)
}












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



confetti_star <- function(plot, n, color = "red", size = 2) {
  random_points <- data.frame(x = runif(n, min = -1, max = 1),
                              y = runif(n, min = -1, max = 1))

  plot <- plot +
    geom_point(data = random_points, aes(x = x, y = y), shape = 8, color = color, size = size)

  return(plot)
}



confetti_diamond <- function(plot, n, color = "red", size = 2) {
  random_points <- data.frame(x = runif(n, min = -1, max = 1),
                              y = runif(n, min = -1, max = 1))

  plot <- plot +
    geom_point(data = random_points, aes(x = x, y = y), shape = 18, color = color, size = size)

  return(plot)
}


confetti_circle <- function(plot, n, color = "red", size = 2) {
  random_points <- data.frame(x = runif(n, min = -1, max = 1),
                              y = runif(n, min = -1, max = 1))

  plot <- plot +
    geom_point(data = random_points, aes(x = x, y = y), shape = 19, color = color, size = size)

  return(plot)
}




add_text <- function(art, text, size) {
  art <- art +
    annotate("text", x = 0.5, y = 1, label = text, hjust = 0.5, vjust = 0.5, size = size)
  return(art)
}



# Generate the shape

shape1 <- generate_random_shape(num_points = 100, num_cycles = 3)

shape1 <- add_text(art = shape1, text = "To: Ashkan", size = 6)


# Add color to the shape
shape1 <- add_color_to_shape(shape1, shape_color = "#9E4244", background_color = "#FAA0A0")
shape1 <- confetti_circle(shape1, n =100, color = "white", size = 2)

# Display the shape with color
print(shape1)









