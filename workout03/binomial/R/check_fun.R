
# (1.1) Private checker functions
# private auxiliary function is to test if an input is a valid value


#check probability valid

check_prob <- function(prob=1){
  if ( length(prob) !=1 | !is.numeric(prob)){ stop("\n'prob' must be a numberic vector of length 1") }
  if( (prob<0) | (prob>1) ){stop("p has to be a number between 0 and 1")}
  TRUE}

# check trials valid

check_trials <- function(trials=1){
  if(trials <0 ){  stop("invalid trials value") }
  TRUE}

#check success valid

check_success <- function(success=1, trials=1){
  if ( success<0 | success>trials){stop("invalid success value")}
  TRUE}
