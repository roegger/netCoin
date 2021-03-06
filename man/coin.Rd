\name{coin}
\alias{coin}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Coincidence matrix.
}
\description{
A coincidence object consists of a list with two elements: 1) the number of scenarios ($n), and 2) a coincidence matrix of events, whose main diagonal figures are the frequency of events and outside this diagonal there are conjoint frequencies of these events ($f)
}
\usage{
coin(incidences, minimum = 1, maximum = nrow(incidences),
     sort = FALSE, decreasing = TRUE, 
     total=FALSE, subsample=FALSE,
     weight=NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{incidences}{an incidence matrix or data frame with only 0/1 variables}
  \item{minimum}{minimum frequency to be considered}
  \item{maximum}{maximum frequency to be considered}
  \item{sort}{sort the coincidence matrix according to frequency of events}
  \item{decreasing}{decreasing or increasing sort of the matrix}
  \item{total}{add one first row and column with total}
  \item{subsample}{retrict the analysis to scenarios with at least one event}
  \item{weight}{a vector of weights. Optimal for data.framed tables}
}
\details{
Produce a matrix of coincidences from a matrix of incidences.
}
\value{
An object of \code{coin} class
\item{n}{Number of scenarios (rows of the incidence matrix)}
\item{f}{Coincidence matrix}
}
\author{
Modesto Escobar, Department of Sociology and Communication, University of Salamanca. See \url{https://sociocav.usal.es/blog/modesto-escobar/}
}
\examples{
## Random incidence matrix: 25 scenarios, 4 events.
I <- matrix(rbinom(100, 1, .5), nrow = 25, ncol = 4,
            dimnames = list(NULL, c("A", "B", "C", "D")))
coin(I, sort = TRUE)

## Hair by Eye by Sex table from M. Friendly (2000)
data(HairEyeColor)
H<-as.data.frame(HairEyeColor)
W<-H$Freq
I<-dichotomize(H,c("Hair","Eye","Sex"),add=FALSE)
coin(I,w=W)
}
