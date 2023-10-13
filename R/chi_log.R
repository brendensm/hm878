#' Pearson's Goodness of Fit for a Logistic Regression Model
#'
#' Use this function to easily calculate the chi-squared, degrees of freedom, and p-value for your model.
#'
#'@param model The name of the object containing your logistic regression model.
#'@param data The name of your data frame.
#'@param name An optional string, labeling the output of the function.
#'
#'@examples
#'chi_log(model_block1, demo, name = "Block 1")
#'chi_log(model_block2, demo, name = "Block 2")


chi_log <- function(model, data, name = "model"){
  # model is the name of your model
  # data is your dataframe
  # name is an optional label for your output
  residuals <- stats::residuals(model, type = "pearson")
  pearson_chi_square <- sum(residuals^2)
  df_ <- nrow(data) - length(coefficients(model))
  p_value <- 1 - stats::pchisq(pearson_chi_square, df_)

  cat(
      "Pearson Goodness of Fit Test\n",
      "Null Hypothesis: The model fits.\n",
      "Alternative Hypothesis: The model does not fit.\n\n",
      "Pearson chi-squared for", paste0(name, ": "),
      round(pearson_chi_square, 2), "\n",
      "Degrees of freedom for", paste0(name, ": "), df_, "\n",
      "P-value for", paste0(name, ": "), p_value, "\n\n",
      "---\n",
      ifelse(round(p_value, 2) < 0.05,
      "Null Hypothesis is rejected. The model does not fit.\n",
      "Failed to reject Null Hypothesis. The model fits.\n"),
      "---"
      )

}