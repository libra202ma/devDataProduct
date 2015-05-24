shinyUI(navbarPage("Navbar!",
        tabPanel("App",
                pageWithSidebar(
                        #Application title
                        headerPanel("Car MPG Prediction"),
                
                        sidebarPanel(
                                sliderInput('weight', 'Give a weight (lb/1000)',value =3.5, min=1.5, max=5.5,step=0.05),
                                numericInput('cylinder','Number of cylinders',6, min=4,max=8,step = 1),
                                submitButton('submit')
                
                        ),
                        mainPanel(
                                h3('Results of prediction'),
                                h4('You entered'),
                                verbatimTextOutput("inputValue1"),
                                verbatimTextOutput("inputValue2"),
                                h4('Resulting predicted MPG'),
                                verbatimTextOutput("prediction")
                  
                        )
                )
        ),
        tabPanel("Documentation",
                sidebarPanel(
                        h3('How the App works:'),
                        h4('This App predicts the cars MPG with 2 input parameters:
car weight in the unit of lb/1000, and the number of cylenders. The user will input the car weight with the slider bar, which is in the range of [1.5 ~ 5.5]; 
also the number of cylinders, which is any integer number in the range of [4 ~ 8].
The App will give the predicted MPG with the 2 inputs after the user pushes the `submit` button.'),
                        h4('The App does the prediction through a model built with linear regression using `mtcars` data, with the predictors `wt` and `cyl`. ')

                )
        )

))