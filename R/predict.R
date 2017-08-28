#' A pred Function
#'
#' This function allows you to....
#' @param url the previous URL
#' @keywords pred
#' @export
#' @examples
#' pred()
pred <- function(url) {
  print (url)
  out <- tryCatch(
    {
      predict(model$estimate, newdata = url)

    },
    error=function(cond) {
      NA
    })
  return (out)
}
