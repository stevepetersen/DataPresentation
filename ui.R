shinyUI(pageWithSidebar(
  headerPanel("Adding Sine Waves"),
  sidebarPanel(
    sliderInput('c1', 'Component 1 Frequency',value = 1, min = 0, max = 10, step = 0.5),
    sliderInput('c2', 'Component 2 Frequency',value = 1, min = 0, max = 10, step = 0.5),
    sliderInput('c3', 'Component 3 Frequency',value = 1, min = 0, max = 10, step = 0.5)
  ),
  mainPanel(
    plotOutput('combination')
  )
))

