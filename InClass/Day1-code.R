
# Created by SF Koch, 11 Feb 26
# This program is to show some basic calculations and manipulations in R
# Calculations

library(knitr)
library(kableExtra)

a1 <- 1 + 4 * 5

a2 <- (1 + 4 ) * 5

a1/a2

1*(a1!=a2)

#random data and model exercise
x <- runif(200,5,10)
e <- rnorm(200,0,1)
y <- 0.25 - .5*x + e

model <- lm(y~x)
names(model)

model.summary <- round(summary(model)$coefficients, digits=3)

kable(model.summary, format = "html", align='rrrr', booktabs=T,
      caption="Linear Model Results",
      col.names=c("Variable", "Coefficient", "Stand Err", "Prob"),
      escape=F) %>%
  kable_styling(latex_options = c("hold_position","striped",
                                  position="center", full_width=F)) %>%
  add_footnote("Results derived from generated data.") 

# a data frame
x1 <- rep(1,5)
x2 <- c(0,1,0,1,1)
x3 <- c(1,2,3,4,5)

dfx <- data.frame(x1,x2,x3)

View(dfx)
