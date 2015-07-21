
shinyServer(
  function(input, output) {
    output$combination <- renderPlot({
      x <- seq(-3, 14, by=1/32)
      y <- seq(-3, 3, by=1)
      c1 <- input$c1
      c2 <- input$c2
      c3 <- input$c3
      plot(sin(c1 * x) + sin(c2 * x) + sin(c3* x), xlab='t', ylab='Magnitude', col='lightblue',main='Components', ylim=c(-3, 3),  type='l')
      text(63, 150, paste("component 1 = ", input$c1))
      text(63, 150, paste("component 2 = ", input$c2))
      text(63, 150, paste("component 3 = ", input$c3))
    })
    
  }
)