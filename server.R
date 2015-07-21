
shinyServer(
  function(input, output) {
    output$combination <- renderPlot({
      x <- seq(-3, 14, by=1/32)
      y <- seq(-3, 3, by=1)
      c1 <- input$c1
      c2 <- input$c2
      c3 <- input$c3
      isum <- input$isum
      icomp <- input$icomp
      if (isum == FALSE && icomp == FALSE) {
        plot(x, xlab='t', ylab='Magnitude', col='black',main='Components', ylim=c(-3, 3),  type='n')
      } else {
        if (isum == TRUE) {
          plot(sin(c1 * x) + sin(c2 * x) + sin(c3* x), xlab='t', ylab='Magnitude', col='black',main='Components', ylim=c(-3, 3), lwd=3, type='l')
          par(new=TRUE)
        }
        if (icomp == TRUE) {
          plot(sin(c1 * x), xlab='t', ylab='Magnitude', col='red',main='Components', ylim=c(-3, 3),  type='l')
          par(new=TRUE)
          plot(sin(c2 * x), xlab='t', ylab='', col='green',main='', ylim=c(-3, 3),  type='l')
          par(new=TRUE)
          plot(sin(c3* x), xlab='t', ylab='', col='blue',main='', ylim=c(-3, 3),  type='l')
          par(new=TRUE)
        }
      }
    })
    
  }
)