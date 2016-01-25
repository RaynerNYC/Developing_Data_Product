Kuala Lumpur Air Pollutant Index (API)
========================================================
author: Rayner NYC
date  : 18 January 2016


Introduction
========================================================

This slide presentation is produced as part of Coursera course project for Developing Data Products.


### Shiny Apps

The shiny apps can be viewed at this page: 
https://raynernyc.shinyapps.io/KLAirPollutantIndex/

### Github Repo

The code for the shiny apps can be downloaded from the github repo at: https://github.com/RaynerNYC



My Shiny Application
========================================================

The Air Pollution Index (API) is a simple and generalized way to describe the air quality, which is used in Malaysia. It is calculated from several sets of air pollution data.

This application allows viewer to observe the hourly changes of the API reading in Kuala Lumpur, based on the selected Month and Year.

Source of the data is obtained from http://data.gov.my/view.php?view=280

However, the measured API is only available from August 2013 and February 2015.


Location of API Reading Taken
========================================================




Summary
========================================================

This application demonstrated the features in Shiny application that allows creation of interactive R programs embedded into web page.

The Select Box input is used to receive user action and Plot Output is used to display the outcome of user selection.

The reactive output is displayed in the graph as a result of server processes.

Based on the outcome of the graph, we can observe that API readings usually peak in the afternoon around 3-4pm.
