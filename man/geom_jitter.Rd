% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/geom-point-jitter.r
\name{geom_jitter}
\alias{geom_jitter}
\title{Points, jittered to reduce overplotting.}
\usage{
geom_jitter(mapping = NULL, data = NULL, width = NULL, height = NULL,
  stat = "identity", position = "jitter", na.rm = FALSE, ...)
}
\arguments{
\item{mapping}{The aesthetic mapping, usually constructed with
\code{\link{aes}} or \code{\link{aes_string}}. Only needs to be set
at the layer level if you are overriding the plot defaults.}

\item{data}{A layer specific dataset - only needed if you want to override
the plot defaults.}

\item{width}{Amount of vertical and horizontal jitter. The jitter
  is added in both positive and negative directions, so the total spread
  is twice the value specified here.

  If omitted, defaults to 40\% of the resolution of the data: this means the
  jitter values will occupy 80\% of the implied bins. Categorical data
  is aligned on the integers, so a width or height of 0.5 will spread the
  data so it's not possible to see the distinction between the categories.}

\item{height}{Amount of vertical and horizontal jitter. The jitter
  is added in both positive and negative directions, so the total spread
  is twice the value specified here.

  If omitted, defaults to 40\% of the resolution of the data: this means the
  jitter values will occupy 80\% of the implied bins. Categorical data
  is aligned on the integers, so a width or height of 0.5 will spread the
  data so it's not possible to see the distinction between the categories.}

\item{stat}{The statistical transformation to use on the data for this
layer.}

\item{position}{The position adjustment to use for overlapping points
on this layer}

\item{na.rm}{If \code{FALSE} (the default), removes missing values with
a warning.  If \code{TRUE} silently removes missing values.}

\item{...}{other arguments passed on to \code{\link{layer}}. This can
include aesthetics whose values you want to set, not map. See
\code{\link{layer}} for more details.}
}
\description{
The jitter geom is a convenient default for geom_point with position =
'jitter'. It's a useful way of handling overplotting caused by discreteness
in smaller datasets.
}
\section{Aesthetics}{

\Sexpr[results=rd,stage=build]{ggplot2:::rd_aesthetics("geom", "jitter")}
}
\examples{
p <- ggplot(mpg, aes(cyl, hwy))
p + geom_point()
p + geom_jitter()

# Add aesthetic mappings
p + geom_jitter(aes(colour = class))

# Use smaller width/height to emphasise categories
ggplot(mpg, aes(cyl, hwy)) + geom_jitter()
ggplot(mpg, aes(cyl, hwy)) + geom_jitter(width = 0.25)

# Use larger width/height to completely smooth away discreteness
ggplot(mpg, aes(cty, hwy)) + geom_jitter()
ggplot(mpg, aes(cty, hwy)) + geom_jitter(width = 0.5, height = 0.5)
}
\seealso{
\code{\link{geom_point}} for regular, unjittered points,
 \code{\link{geom_boxplot}} for another way of looking at the conditional
    distribution of a variable
}

