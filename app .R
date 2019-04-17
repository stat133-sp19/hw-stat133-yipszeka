library(shiny)
library(ggplot2)

ui <- fluidPage(
  
   titlePanel("Investing Modalities"),
   
   fluidRow(
     
     column(4,
      sliderInput("initial","initial Amount", min = 0, max =100000, value = 1000, step=500,pre = "$",sep = ","),
      sliderInput("annual", "Annual Contribution", min=0,max=50000,value=2000,step=500,pre = "$",sep = ",")
     ),
      
     column(4,
      sliderInput("returnrate","Return Rate(in%)", min = 0, max =20, value = 5,step=0.1),
      sliderInput("growthrate", "Growth Rate(in %)", min=0,max=20,value=2,step=0.1)
     ),
      
     column(4,
      sliderInput("years","Years",min=0,max=50,value=20,step=1),
      selectInput("facet","Facet?",choices = c("Yes","No"),selected = "No")
     )
     
  ),
     
      mainPanel(
        HTML('<hr style="color: grey;">'),
        h4("Timelines"),
        plotOutput("plot1"),
        h4("Balances"),
        verbatimTextOutput("table1")
      )
   )

server <- function(input, output) {
  
  #functions 
  #' @title Investing Modalities For-loop
  #' @description using for loops and function call to compute the annual balances of each saving-investing modality 
  #' @param initial is the present value amount (i.e. how much you invest)
  #' @param annual is the contributed amount
  #' @param returnrate is the annual rate of return
  #' @param growthrate is the annual growth rate
  #' @param years is the number of years
  #' @param future_value  is the future value (i.e. what you’ll get), FV =PV*((1+r)^t)
  #' @param annuity is the future value of annuity
  #' @param growing_annuity is the future value of growing annuity
  #' @return modalities returns a combination of 3 function (future_value, future_value+annuity, future_value+growing _annuity) table of a data frame containing the annual balances in each modality(future_value,annuity,growing_annuity)
 
   future_value <- function(initial,returnrate,years){
    future_value <- initial*((1+returnrate)^years)
    return(future_value) }
  
  annuity <- function(annual,returnrate,years){
    annuity <-   annual*((((1+returnrate)^years)-1) /returnrate ) 
    return(annuity) }
  
  growing_annuity <- function(annual,returnrate,growthrate,years){
    growing_annuity <- annual*( (((1+returnrate)^years)- ((1+growthrate)^years)) / (returnrate-growthrate))
    return(growing_annuity)}
  
  
# table dat1   
  
  dat1 <- reactive({
    
     initial <- input$initial 
     returnrate <- input$returnrate /100
     years <- input$years
     annual <- input$annual
     growthrate <- input$growthrate / 100
    
     dat1 <- data.frame(
       years= 0,
       no_contrib = input$initial ,
       fix_contrib = input$initial ,
       growing_contrib =input$initial )
   
     for (i in 1:input$years+1){
       dat1[i,1] <- i-1
       dat1[i,2]  <- future_value(initial, returnrate, years = i-1)
       dat1[i,3] <- future_value(initial, returnrate, years = i-1) + annuity(annual,returnrate, years = i-1)
       dat1[i,4] <- future_value(initial, returnrate, years= i-1) +growing_annuity(annual, returnrate, growthrate, years = i-1)
     }
    
  return(dat1)
  })  
  
  output$table1 <- renderPrint({
    dat1()
  })  




  
# plot 

  dat2 <- reactive({
    
    
    initial <- input$initial 
    returnrate <- input$returnrate /100
    years <- input$years
    annual <- input$annual
    growthrate <- input$growthrate / 100
    
    
   dat2<- data.frame( 
     years = 0,
     balance = input$initial,
     mode= c("no_contrib", "fixed_contrib", "growing_contrib")
      )
  
    for(i in 1: input$years){
       nc <- future_value(initial, returnrate, years = i)
       fc <- future_value(initial, returnrate, years = i) + annuity(annual,returnrate, years = i)
       gc <- future_value(initial, returnrate, years= i) +growing_annuity(annual, returnrate, growthrate, years = i)
      
       dat2 <- rbind(dat2,c(i,nc,"no_contrib"))
       dat2 <- rbind(dat2,c(i,fc,"fixed_contrib"))
       dat2 <- rbind(dat2,c(i,gc,"growing_contrib"))
     }
  
      dat2$mode <- factor(dat2$mode, levels = c("no_contrib", "fixed_contrib", "growing_contrib"))
      dat2 <- transform(dat2, years = as.numeric(years), balance = as.numeric(balance))
      
   
  return(dat2)   
  
  })  
  
  
  output$plot1 <- renderPlot({
    
    if (input$facet == "No"){
    ggplot(dat2(), aes(x=years,y=balance, color=mode))+
      geom_point()+
      geom_line()+
      ggtitle("Three modes of investing")+
        ylab("value") +
        theme_grey()
      
    }else{
      ggplot(dat2(), aes(x=years,y=balance, color=mode))+
        geom_point(size=0.8)+
        geom_line()+
        geom_area(aes(x = years, y = balance, fill = mode,), alpha=0.5)+
        ggtitle("Three modes of investing")+
        ylab("value") +
        theme_bw()+
        facet_grid(~mode)
    }
     
  })
  
  }


# Run the application 
shinyApp(ui = ui, server = server)

