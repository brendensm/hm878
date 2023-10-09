#' Calculate Upper and Lower Fences
#'
#' This function inputs a continous variable and returns the upper and lower fences.
#'
#' @param x A continuous variable
#'
#' @examples
#' fences(demo$variable4)
#'

fences <- function(x){
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR_value <- IQR(x)
  k <- 1.5
  lower_fence <- Q1 - k * IQR_value
  upper_fence <- Q3 + k * IQR_value

  cat(" Lower Fence:", lower_fence, "\n",
      "Upper Fence:", upper_fence)

}
