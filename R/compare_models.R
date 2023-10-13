#'Compare Summary Results of Models
#'
#'Use this function to compare output from multiple models in one list of output.
#'
#'@param ... list the names of all models you want to compare
#'@param labels an optional vector of names to label each model included in the output.
#'
#'@examples
#'compare_models(mb1, mb2, labels = c("Block 1", "Block 2"))
#'

compare_models <- function(..., labels = NULL){

  if(length(labels) == 0){

    models <- list(...)

    names(models) <- unlist(lapply(
      match.call(expand.dots = FALSE)$`...`,
      function(.x) deparse(.x, width.cutoff = 500L)))


    return(models)
  }else{
    models <- list(...)

    names(models) <- labels


    return(models)
  }

  # for(i in models){
  #    i[c("deviance", "aic", "null.deviance")]
  # }

}
