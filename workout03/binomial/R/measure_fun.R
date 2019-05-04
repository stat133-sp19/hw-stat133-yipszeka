#1.8) functions of measures


#' @title mean of the binomial distribution
#' @description calculate the mean of a binomial distribution
#' @param trials  number of trials
#' @param prob  probability of success
#' @return mean of a binomial distribution
#' @export
#' @examples
#' bin_mean(1, 1)

bin_mean <- function(trials=1,prob=1){
  if (check_trials(trials) !=TRUE){stop("invalid trials value")}
  else if (check_prob(prob) != TRUE){stop("invalid prob value")}
  else { return(aux_mean(trials,prob)) }}



#' @title variance of a binomial distribution
#' @description calculate the variance of a binomial distribution
#' @param trials number of trials
#' @param prob  probability of success
#' @return variance of a binomial distribution
#' @export
#' @examples
#' bin_variance(1, 1)

bin_variance <- function(trials=1,prob=1) {
  if (check_trials(trials) !=TRUE){stop("invalid trials value")}
  else if (check_prob(prob) != TRUE){stop("invalid prob value")}
  else { return(aux_variance(trials,prob))}}




#' @title binomial mode of a binomial distribution
#' @description calculate the mode of a binomial distribution
#' @param trials number of trials
#' @param prob probability of success on rach trial
#' @return mode of a binomial distribution
#' @export
#' @examples
#' bin_mode(1, 1)

bin_mode <- function(trials=1,prob=1) {
  if (check_trials(trials) !=TRUE){stop("invalid trials value")}
  else if (check_prob(prob) != TRUE){stop("invalid prob value")}
  else { return(aux_mode(trials,prob))}}



#' @title skewness of a binomial distribution
#' @description calculate the skewness of a binomial distribution
#' @param trials the number of trials
#' @param prob the probability of success on rach trial
#' @return skewness of a binomial distribution
#' @export
#' @examples
#' bin_skewness(1,1)

bin_skewness <- function(trials=1,prob=1) {
  if (check_trials(trials) !=TRUE){stop("invalid trials value")}
  else if (check_prob(prob) != TRUE){stop("invalid prob value")}
  else { return(aux_skewness(trials,prob))}}




#' @title kurtosis of a binomial distribution
#' @description calculate the kurtosis of a binomial distribution
#' @param trials the number of trials
#' @param prob the probability of success on rach trial
#' @return kurtosis of a binomial distribution
#' @export
#' @examples
#' bin_kurtosis(1, 1)

bin_kurtosis <- function(trials=1,prob=1) {
  if (check_trials(trials) !=TRUE){stop("invalid trials value")}
  else if (check_prob(prob) != TRUE){stop("invalid prob value")}
  else {  return(aux_kurtosis(trials,prob))}}

#bin_mean(10,0.3)
#bin_variance(10,0.3)
#bin_mode(10,0.3)
#bin_skewness(10,0.3)
#bin_kurtosis(10,0.3)





