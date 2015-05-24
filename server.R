#prediction code

data(mtcars)
fit <- lm(mpg ~ wt + cyl, mtcars)
predictMPG <- function(weight,cylinder) {predict(fit,data.frame(wt=weight,cyl=cylinder))}

shinyServer(
        function(input, output) {
                output$inputValue1 <- renderPrint({input$weight})
                output$inputValue2 <- renderPrint({input$cylinder})
                output$prediction <- renderPrint({predictMPG(input$weight,input$cylinder)})
                
        }
)