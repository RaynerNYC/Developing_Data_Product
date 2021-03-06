library(shiny)

fluidPage(
  titlePanel("Kuala Lumpur Air Pollutant Index (API) from Aug 2013 to Feb 2015"),
  sidebarLayout(
    sidebarPanel(
      selectInput("year", label="Select year", selected=2014, choices = c(2013,2014,2015)),
      selectInput("month", label="Select month", selected=1, choices=c(1,2,3,4,5,6,7,8,9,10,11,12))
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Plot",h3('Hourly API Reading per Month'), plotOutput("plot1")),
        tabPanel("Introduction", h5('This is a Shiny application which is developed as part of Coursera course project for Developing Data Products.'),
                 h5('The Air Pollution Index (API) is a simple and generalized way to describe the air quality, which is used in Malaysia. It is calculated from several sets of air pollution data. '),
                 h5('This application allows viewer to observe the hourly changes of the API reading in Kuala Lumpur, based on the selected Month and Year.'),
                 h5('Source of the data is obtained from http://data.gov.my/view.php?view=280'),
                 h5('However, the measured API is only available from August 2013 and February 2015.')
                 ),
        tabPanel("Summary", h5('This application demonstrated the features in Shiny application that allows creation of interactive R programs embedded into web page.'),
                 h5('The Select Box input is used to receive user action and Plot Output is used to display the outcome of user selection.'),
                 h5('The reactive output is displayed in the graph as a result of server processes.'),
                 h5('Based on the outcome of the graph, we can observe that API readings usually peak in the afternoon around 3-4pm.')
                 )
      )
    )
  )
)
