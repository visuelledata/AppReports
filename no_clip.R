no_clip <- function(plot = last_plot()) {
  
  plot.new()
  
  # Build a gtable, then turn off clipping
  plot <- ggplot_build(plot)
  plot <- ggplot_gtable(plot)
  plot$layout$clip[plot$layout$name=="panel"] <- "off"
  
  ggdraw(plot)
}
