#1.7) function bin_variable()

#' @title  bin_variable()
#' @description   bin_variable() is a function that check the probability and trials to see if its valid.
#' @param trials the number of the total trials
#' @param prob  the probability of a succeess
#' @return it returns a list with class "binvar"
#' @export
#' @examples
#' #binomial variable trials and probability
#'  bin_variable()
#'  bin_variable(trials = 10, p = 0.3)


bin_variable <- function(trials=1,prob=1){
  if( check_trials() ==TRUE & check_prob() ==TRUE){
    x <- c(trials,prob)}
  class(x) <- c("binvar")
  return(x)}

#' @export
print.binvar <- function(x,...){
  cat ( '"Binomial variable"\n\n'   )
  cat ( 'Paramaters\n')
  cat ( sprintf('-number of trials:%s', x[1]),"\n"  )
  cat ( sprintf('-prob of success:%s', x[2]),"\n"  )
  invisible(x)}

#bin1 <- bin_variable(trials = 10, p = 0.3)
#bin1

#' @export
summary.binvar <- function(object,...){
  x<- data.frame(
    trials= object[1],
    prob= object[2],
    mean = aux_mean(object[1],object[2]),
    variance = aux_variance(object[1],object[2]),
    mode= aux_mode(object[1],object[2]),
    skewness= aux_skewness(object[1],object[2]),
    kurtosis= aux_kurtosis(object[1],object[2]))

  class(x) <-"summary.binvar"
  x
}

#' @export
print.summary.binvar <- function(x,...){

  cat ( '\n\n"Summary Binomial"\n\n'   )
  cat ( 'Paramaters\n')
  cat ( "-number of trials:", x$trials,"\n"  )
  cat ( "-prob of success:", x$prob,"\n\n"  )
  cat ('Measures\n')
  cat ("-mean:", x$mean,"\n")
  cat ("-variance:", x$variance,"\n")
  cat ( "-mode:", x$mode,"\n")
  cat ("-skewness:", x$skewness,"\n")
  cat ("-kurtosis", x$kurtosis,"\n")

}



#bin1 <- bin_variable(trials = 10, p = 0.3)
#binsum1 <- summary(bin1)
#binsum1
