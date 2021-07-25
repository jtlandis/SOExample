
#' @export
foo <- function() structure(NA, class = "foo")

#' @export
fun_failure <- function(x){
  lapply(x, docheck)
}

#' @export
fun_success <- function(x){
  docheck(x)
}

docheck <- function(x) UseMethod('docheck')
docheck.default <- function(x) F
docheck.foo <- function(x) T
