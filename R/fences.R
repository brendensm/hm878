#' Calculate Upper and Lower Fences
#'
#' This function inputs a continous variable and returns the upper and lower fences.
#'
#' @param x A continuous variable
#'
#' @examples
#' fences(demo$variable4)
#' fences(demo$variable4)$Lower
#' fences(demo$variable4)$Upper
#'

fences <- function(x){
    Q1 <- stats::quantile(x, 0.25)
    Q3 <- stats::quantile(x, 0.75)
    IQR_value <- stats::IQR(x)
    k <- 1.5
    lower_fence <- Q1 - k * IQR_value
    upper_fence <- Q3 + k * IQR_value

    return(
        data.frame(Lower = lower_fence, Upper = upper_fence)
    )
}
