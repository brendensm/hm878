#'Compare Deviance and AIC of models
#'
#'This function pulls the null deviance, residual deviance, and AIC from multiple models and puts them together in an easy to read output.
#'
#'@param ... The names of the models you wish to compare
#'
#'@examples
#'deviance_aic(mb1, mb2, mb3)
#'

deviance_aic <- function(...){

  x <- 0

  models <- list(...)

  names(models) <- unlist(lapply(
    match.call(expand.dots = FALSE)$`...`,
    function(.x) deparse(.x, width.cutoff = 500L)))

  for(i in models){

    x <- x + 1

    name <- names(models)[x]

    cat(name, "\n")

    cat("Residual Deviance:", round(i$deviance, 2), "\n")

    cat("Null Deviance:", round(i$null.deviance, 2), "\n")

    cat("AIC:", round(i$aic, 2), "\n\n")

  }

}
