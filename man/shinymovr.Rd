% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shinymovr.R
\name{shinymovr}
\alias{shinymovr}
\title{Gather recorded data from UI.}
\usage{
shinymovr(input, output, session, movements = c("x", "y", "z", "gamma",
  "beta", "alpha"), orientations = c("alpha", "beta", "gamma"),
  time_limit = -1, recording_message = "Recording Movement...",
  normalized = TRUE)
}
\arguments{
\item{input}{you can ignore this as it is taken care of by shiny}

\item{output}{you can ignore this as it is taken care of by shiny}

\item{session}{you can ignore this as it is taken care of by shiny}

\item{movements}{list of desired movement directions from sensor}

\item{orientations}{list of desired orientation directions from sensor (good when not used on phone)}

\item{time_limit}{number of seconds for data gathering, defaults to until button pressed again.}

\item{recording_message}{text for the button when recording is taking place.}

\item{normalized}{Do you want the data for each output normalized by this samples mean and standard deviation? Defaults to true.}
}
\description{
Contains a reactive variable that will update as new data comes in.
}
\examples{
 movrData <- callModule(shinymovr)
}
