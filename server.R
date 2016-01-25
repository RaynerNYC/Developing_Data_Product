library(shiny)
library(lubridate)  #for selecting specific year & month from date data 
library(ggplot2)

server <-function(input, output) {
  cheras <- read.csv("API_CherasKL.csv")
  output$plot1<-renderPlot({
    selected.data<-cheras[month(cheras$Date)==input$month & year(cheras$Date)==input$year,]
    ggplot(data=selected.data, aes(x=selected.data$Hour, y=selected.data$API))+geom_smooth(color="blue")+labs(x="Hour", y="API Reading")
  })
}
