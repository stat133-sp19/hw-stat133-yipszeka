#(1.2) Private Auxiliary Functions

aux_mean <- function(trials=1,prob=1){ mean <- trials * prob
return(mean)}
aux_variance <- function(trials=1,prob=1){ var <- trials * prob * (1-prob)
return(var)}
aux_mode <- function(trials=1,prob=1){
  value <- (trials * prob)+ prob
  if ( (value %% 1) == 0  ){ mode <- c(value,value-1) }
  else{ mode <- floor(value)}
  return(mode)}
aux_skewness <- function(trials=1,prob=1){
  ske <- (1-2*prob)/ sqrt(trials*prob*(1-prob))
  return(ske)}
aux_kurtosis <- function(trials=1,prob=1){
  ku <-(  1-6*prob*(1-prob)  )/(  trials * prob *(1-prob)   )
  return(ku)}

#aux_mean(10,0.3)
#aux_variance(10,0.3)
#aux_mode(10,0.3)
#aux_skewness(10,0.3)
#aux_kurtosis(10,0.3)
