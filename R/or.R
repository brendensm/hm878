#' Odds ratios and Confidence Intervals from a Logistic Regression Model
#'
#' This function takes a logistic regression model and returns a data frame that contains odds ratios and confidence intervals.
#'
#'@param x Name of the object containing the logistic regression model.
#'
#'@examples
#' or(model_block1)

or <- function(x){

  mod_sum <- summary(x)

  odds_ratios <- exp(stats::coef(x))
  conf_intervals <- exp(stats::confint(x))

  coefs <- mod_sum$coefficients
  p_val <- coefs[,4]


  if(is.matrix(conf_intervals)){

    results <- data.frame(Odds_Ratio = odds_ratios, CI_Lower = conf_intervals[,1],
                          CI_Upper = conf_intervals[,2], p_values = p_val)
    return(results)
  } else {
    results <- data.frame(Odds_Ratio = odds_ratios, CI_Lower = conf_intervals[1],
                          CI_Upper = conf_intervals[2], p_values = p_val)
    return(results)
  }
}
