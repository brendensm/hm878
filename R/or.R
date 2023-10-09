#' Odds ratios and Confidence Intervals from a Logistic Regression Model
#'
#' This function takes a logistic regression model and returns a data frame that contains odds ratios and confidence intervals.
#'
#'@param x Name of the object containing the logistic regression model.
#'
#'@examples
#' or(model_block1)

or <- function(x){
   odds_ratios <- exp(stats::coef(x))
   conf_intervals <- exp(stats::confint(x))
   results <- data.frame(Odds_Ratio = odds_ratios, CI_Lower = conf_intervals[, 1],
                          CI_Upper = conf_intervals[, 2])
   return(results)

}
