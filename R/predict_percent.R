#' Accuracy for a Logistic Regression Model
#'
#' This function calcualtes the accuracy of a logistic regression model based on the predicted probabilities.
#'
#'@param model The name of the object containing your logistic regression model.
#'@param dependent the name of your dependent variable. Must use full syntax specifying the data frame the variable comes from. This will look like 'dataframe$variable'.
#'@param name An optional string, labeling the output of the function.
#'
#'@examples
#'predict_percent(model_block1, demo$dependentvariable, name = "Block 1")

predict_percent <- function(model, dependent, name = "your model"){
  # where model is the name of your logistic regression model
  # and dependent is your dependent variable
  # name is an optional title to give your model in the output
  prob = stats::predict(model, type = "response")
  lab = ifelse(prob >= 0.5, 1, 0)
  acc = mean(lab == dependent)


  acc_label = paste0("Accuracy for ", name, ": ", round(acc * 100, 2), "%")

  return(acc_label)

}
