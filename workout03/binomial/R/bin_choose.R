#(1.3) Function bin_choose

#' @title bin_choose()
#' @description  bin_chooose() is a function that calculates the number of combinations in which k success canccur in n trials
#' @param n  trials the number of the total trials
#' @param k  scuuess the probability of a succeess
#' @return bin_chooose returns the number of success canocuur in n trials
#' @export
#' @examples
#' bin_choose()
#' bin_choose(1,1)

bin_choose <- function(n=1,k=1){
  if (k>n){stop("k cannot be greater than n")}
  else{cho <- factorial(n)/ (factorial(k)*factorial(n-k))
  return(cho)}}

#bin_choose(5,2)
#bin_choose(5,0)
#bin_choose(5, 1:3)
