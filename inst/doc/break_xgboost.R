## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library("breakDown")
if (requireNamespace("xgboost", quietly = TRUE)) {
  library(xgboost)
  
  model_martix_train <- model.matrix(left ~ . - 1, HR_data)
  data_train <- xgb.DMatrix(model_martix_train, label = as.numeric(HR_data$left))
  param <- list(objective = "reg:linear")
  
  HR_xgb_model <- xgb.train(param, data_train, nrounds = 50)
  HR_xgb_model 
}

## -----------------------------------------------------------------------------
if (requireNamespace("xgboost", quietly = TRUE)) {
  library("breakDown")
  nobs <- model_martix_train[1L, , drop = FALSE]
  
  explain_2 <- broken(HR_xgb_model, new_observation = nobs, 
                      data = model_martix_train)
  explain_2
}

## ---- fig.width=7-------------------------------------------------------------
if (requireNamespace("xgboost", quietly = TRUE)) {
  library(ggplot2)
  plot(explain_2) + ggtitle("breakDown plot for xgboost model")
}

