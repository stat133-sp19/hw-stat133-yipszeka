% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bin_distribution.R
\name{bin_distribution}
\alias{bin_distribution}
\title{bin_distribution()}
\usage{
bin_distribution(trials = 5, prob = 0.5)
}
\arguments{
\item{trials}{the number of the total trials}

\item{prob}{the probability of a succeess}
}
\value{
dataframe of a binomial distribution it returns a da.frame with two classes
bindis and data.frame under the binomial distribution of given trials and probability
}
\description{
bin_distribution() is a function that compute each probability under given numbers of trials and success
}
\examples{
# binomial probability distribution ,
bin_distribution()
bin_distribution(trials = 5, prob = 0.5)
}
