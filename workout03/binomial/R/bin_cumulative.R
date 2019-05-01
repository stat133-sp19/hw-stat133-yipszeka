



#1.6) function bin_cumulative()

#' @title  bin_cumulative()
#' @description   bin_cumulative() is a function that compute the total probability under given numbers of trials and success
#' @param trials the number of the total trials
#' @param prob  the probability of a succeess
#' @return dataframe of a binomial distribution it returns a da.frame with two classes
#' bindis and data.frame under the binomial distribution of given trials and probability
#' @export
#' @examples
#' # binomial cumulative density distribution,
#'  bin_cumulative()
#'  bin_cumulative(5, 0.5)



bin_cumulative <- function(trials=5, prob=0.5) {

  x <-data.frame( )
  for (i in 0: trials){ x<- rbind (x,bin_probability(i,trials,prob)) }
  colnames(x) <- c("probability")
  x$success <- c(0:trials)
  x$cum <-rep(0,trials+1)
  for( i in 1: trials){
    x[1,3] <- x$probability[1]
    x[i+1,3] <-  x[i,3]+x$probability[i+1]}
  x <- data.frame(
    success=x$success,
    probability=x$probability,
    cumulative=x$cum)
  x <- x[ 0: trials+1 ,1:3]
  class(x) <- c("bincum", "data.frame")
  return(x)}



#bin_cumulative(5,0.5)
#b <-bin_cumulative(5,0.5)
#class(b)


# Function plot.bincum()

library(ggplot2)

#' @export
plot.bincum <- function(x,...){
  y <- ggplot(x, aes(x=x$success,y=x$cumulative))+
    geom_point(size=3,shape=11)+
    geom_line(color='purple')+labs(title="bin_cumulative graph",x="successes ",y="probability ")+theme_linedraw()
  return(y)
}


#dis2 <- bin_cumulative(trials = 5, prob = 0.5)
#plot(dis2)
