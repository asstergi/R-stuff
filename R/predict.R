#' A pred Function
#'
#' This function allows you to....
#' @param url the previous URL
#' @keywords pred
#' @export
#' @examples
#' pred()
pred <- function(url) {
  #print (url)
  out <- tryCatch(
    {
      #markovchain::predict(model$estimate, newdata = url)
      mcu[mcu$Row.Labels == url,]$pred
      #class(model$estimate)[1]
    },
    error=function(cond) {
      NA
    })
  if (identical(out, character(0))){
    out <- NA
  }
  return (out)
}