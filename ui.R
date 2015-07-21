shinyUI(pageWithSidebar(
  headerPanel("Adding Sine Waves"),
  sidebarPanel(
    helpText("Set the Red, Green, and Blue component frequencies."),
    sliderInput('c1', 'Red Component Frequency',value = 1, min = 0, max = 10, step = 0.5),
    sliderInput('c2', 'Green Component Frequency',value = 2, min = 0, max = 10, step = 0.5),
    sliderInput('c3', 'Blue Component Frequency',value = 3, min = 0, max = 10, step = 0.5),
    helpText("To see the sum of all of the components, check the 'Show Sum' option."),
    checkboxInput('isum', 'Show Sum (in black)', value = TRUE),
    helpText("To see the individual components, check the 'Show Components' option."),
    checkboxInput('icomp', 'Show Components', value = FALSE)
    ),
  mainPanel(
    helpText("The Adding Sine Waves application allows you to",
             " visualize how sine waves of different frequencies combine.  Set one or more",
             " component freqencies to zero to turn off that component, or from 1 to 10 to ",
             " add that component's frequency to the sum.  Experiment with different values ",
             " to explore constructive and destructive interference."
    ),
    plotOutput('combination')
  )
))

