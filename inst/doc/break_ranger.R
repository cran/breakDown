## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ------------------------------------------------------------------------
library(breakDown)
head(HR_data, 3)

## ------------------------------------------------------------------------
library(ranger)
HR_data$left <- factor(HR_data$left)
model <- ranger(left ~ ., data = HR_data, importance = 'impurity', min.node.size = 10)

## ------------------------------------------------------------------------
importance(model)

## ---- fig.width=7--------------------------------------------------------
library(ggplot2)
explain_1 <- broken(model, HR_data[1159,])
explain_1
plot(explain_1) + scale_y_continuous( limits = c(0,1), name = "fraction of trees", expand = c(0,0))

explain_1 <- broken(model, HR_data[10099,])
explain_1
plot(explain_1) + scale_y_continuous( limits = c(0,1), name = "fraction of trees", expand = c(0,0))

