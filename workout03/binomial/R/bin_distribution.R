#(1.5) Function bin_distribution()

#' @title bin_distribution()
#' @description  bin_distribution() is a function that compute each probability under given numbers of trials and success
#' @param trials the number of the total trials
#' @param prob  the probability of a succeess
#' @return dataframe of a binomial distribution it returns a da.frame with two classes
#' bindis and data.frame under the binomial distribution of given trials and probability
#' @export
#' @examples
#' # binomial probability distribution ,
#' bin_distribution()
#' bin_distribution(trials = 5, prob = 0.5)

bin_distribution <- function(trials=5, prob=0.5) {
  pdf <-data.frame( )
  for (i in 0: trials){ pdf<- rbind (pdf,bin_probability(i,trials,prob)) }
  colnames(pdf) <- c("probability")
  pdf$success <- c(0:trials)
  pdf <- pdf[ 0: trials+1 ,2:1]
  class(pdf) <- c("bindis", "data.frame")
  return(pdf)}

#bin_distribution(5,0.5)
#a <-bin_distribution(5,0.5)
#class(a)

#' @import graphics
#' @export
plot.bindis <- function(x,...){
  a <- barplot(x$probability, xlab="success", ylab="probability",col = "purple",  names.arg = c(0:(length(x$probability)-1)))
  return(a)
}

#dis1 <- bin_distribution(trials = 5, prob = 0.5)
#plot(dis1)
