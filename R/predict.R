#Model prediction function
pred <- function(url) {
  out <- tryCatch(
    {
      predict(model$estimate, newdata = url)

    },
    error=function(cond) {
      NA
    })
  return (out)
}
