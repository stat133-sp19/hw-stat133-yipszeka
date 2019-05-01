

#(1.4) Function bin_probability

#' @title bin_probability()
#' @description  bin_prpbability is a function that compute each probability under given numbers of trials and success
#' @param success the number of success in given trials
#' @param trials the number of the total trials
#' @param prob  the probability of a succeess
#' @return the probability of getting successs in trials with probability per trial
#' @export
#' @examples
#' # binomial probability
#' bin_probability()
#' bin_probability(2,5,0.5)

bin_probability <- function(success=2,trials=5,prob=0.5){
  if (check_trials(trials) !=TRUE){stop("invalid trials value")}
  else if (check_prob(prob)  !=TRUE){ stop("invalid probability value") }
  else if (  check_success(success, trials)  !=TRUE){stop("invalid success value")}
  else{ binprob <-  bin_choose(trials,success)*(prob^success)*((1-prob)^(trials-success))
  return(binprob)}}

#bin_probability(2,5,0.5)
#bin_probability(2,5,0.5)

