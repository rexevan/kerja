theme_brs <- function(base_size = 12, base_family = "Ubuntu") {
  theme_minimal(base_size = base_size, base_family = base_family) +
    theme(
      text = element_text(size = 12),
      plot.background = element_rect(color = "blue", fill = "gray97", linetype = 1, size = 0.5),
      plot.title = element_text(face = "bold"),
      axis.line.x = element_line(color = "black", size = 0.5),
      axis.ticks = element_line(color = "black", size = 0.5),
      panel.grid.major.y = element_line(color = "gray80"),
      panel.grid.major.x = element_blank(),
      panel.grid.minor = element_blank()
    )
}

theme_set(theme_brs())


