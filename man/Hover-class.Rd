\docType{class}
\name{Hover-class}
\alias{Hover-class}
\title{Event broker for hover events.}
\description{
The hover event broker is useful if you want your shiny app
to respond to hover events (\code{mouse_out} and
\code{mouse_over}) in a custom way.
}
\section{Methods}{
\itemize{
\item \code{as_vega(...)}: This method should return a list suitable for inclusion in the 
interaction component of the vega specific. The default method sends
the id, the type (the class name) and the path. If you override it
to add extra data, make sure to use \code{callSuper()} to include
these necessary fields

\item \code{listen_for(name)}: List for a custom message from the client called \code{name}

\item \code{mouse_out()}: A reactive value that changes every time the mouse moves off the
previously selected data mark.
Returns a list containing:
  * plot_id: The ID of the ggvis plot.

\item \code{mouse_over()}: A reactive value that changes every time the mouse moves on a mark.
Returns a list containing:
  * plot_id: The ID of the ggvis plot.
  * data: a list of the data underlying the mark that is hovered over.
    There is an item for each variable in the data, as well as a field
    named `key__`.
  * pagex: The x position of the mouse relative to the page.
  * pagey: The y position of the mouse relative to the page.
}}
\seealso{
\code{\link{tooltip}} for a custom wrapper that uses hover
events to display tooltips.
}

