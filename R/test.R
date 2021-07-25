
#' @export
foo <- function() structure(NA, class = "foo")

#' @export
checkS3 <- function(x){
  lapply(x, docheck)
}

docheck <- function(x) UseMethod('docheck')
docheck.default <- function(x) F
docheck.foo <- function(x) T
