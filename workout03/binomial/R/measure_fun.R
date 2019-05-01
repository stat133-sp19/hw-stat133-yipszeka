#1.8) functions of measures

bin_mean <- function(trials=1,prob=1){
  if (check_trials(trials) !=TRUE){stop("invalid trials value")}
  else if (check_prob(prob) != TRUE){stop("invalid prob value")}
  else { return(aux_mean(trials,prob)) }}

bin_variance <- function(trials=1,prob=1) {
  if (check_trials(trials) !=TRUE){stop("invalid trials value")}
  else if (check_prob(prob) != TRUE){stop("invalid prob value")}
  else { return(aux_variance(trials,prob))}}

bin_mode <- function(trials=1,prob=1) {
  if (check_trials(trials) !=TRUE){stop("invalid trials value")}
  else if (check_prob(prob) != TRUE){stop("invalid prob value")}
  else { return(aux_mode(trials,prob))}}

bin_skewness <- function(trials=1,prob=1) {
  if (check_trials(trials) !=TRUE){stop("invalid trials value")}
  else if (check_prob(prob) != TRUE){stop("invalid prob value")}
  else { return(aux_skewness(trials,prob))}}

bin_kurtosis <- function(trials=1,prob=1) {
  if (check_trials(trials) !=TRUE){stop("invalid trials value")}
  else if (check_prob(prob) != TRUE){stop("invalid prob value")}
  else {  return(aux_kurtosis(trials,prob))}}

#bin_mean(10,0.3)
#bin_variance(10,0.3)
#bin_mode(10,0.3)
#bin_skewness(10,0.3)
#bin_kurtosis(10,0.3)





