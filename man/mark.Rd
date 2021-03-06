\name{mark}
\alias{is.mark}
\alias{mark}
\title{Create a new "mark" object.}
\usage{
mark(type, props, data = NULL)

is.mark(x)
}
\arguments{
  \item{type}{vega mark list}

  \item{props}{list of properties}

  \item{data}{optional data pipeline}
}
\description{
A mark object is a close mapping to a vega mark object.
Vega marks are documented in
\url{https://github.com/trifacta/vega/wiki/Marks}.
}
\details{
This function is designed to be used by authors of new
types of mark. If you are a ggvis user, please use one of
the more specific mark functions starting with the
\code{mark_}.
}
\keyword{internal}

