library(shiny)

shinyUI(fluidPage(
   theme = "default.css",
textInput("taxa", "Taxa (comma delimited)", "Rhea americana, Pterocnemia pennata, Struthio camelus", width="100%"),
 checkboxInput('partial', 'Include studies with a subset of desired taxa, perhaps resulting in underestimate of ages', TRUE),
 br(),
 h2("Table of ages and sources"),
 tableOutput("age"),
 h2("Plot of tree from median ages"),
 plotOutput("medianPlot"),
 h2("Downloads"),
downloadLink('downloadCSV', 'table in csv format')

))