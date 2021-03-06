% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shinyviewr.R
\name{shinyviewr}
\alias{shinyviewr}
\title{Gather recorded data from UI.}
\usage{
shinyviewr(input, output, session, outputWidth = NULL, outputHeight = NULL,
  alphaChannel = TRUE)
}
\arguments{
\item{input}{you can ignore this as it is taken care of by shiny}

\item{output}{you can ignore this as it is taken care of by shiny}

\item{session}{you can ignore this as it is taken care of by shiny}

\item{outputWidth, }{outputHeight How many pixels wide you want your returned photos/the view of the webcam.
When left unfilled or set to \code{NULL} this will attempt to fill whatever size your UI element is. For many image
related tasks you want the output to be a square. So setting this to something like 300x300 is a good idea.}
}
\value{
A reactive function that will return a 3D array with dimensions \code{(height, width, channels (RGBA))} corresponding to the
  image taken by the webcam when shutter was pressed. The RGBA are all in the range of 0-1.
}
\description{
Upon completion of line draw, returns a reactive variable that contains a vector of the y coordinates of what the user has drawn. This also includes the start point specified with `draw_start`
    This is the server component of shinyviewr. You never directly use this function but instead call it through the shiny function `callModule()`. See the example for how to do this.
}
\examples{
\dontrun{
 drawChart <- shiny::callModule(shinyviewr, "myCamera")
 }
}
