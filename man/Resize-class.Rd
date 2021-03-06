\docType{class}
\name{Resize-class}
\alias{Resize-class}
\title{Event broker for resize events.}
\description{
The resize event broker is useful if you want your shiny
app to respond to resize events.
}
\section{Methods}{
\itemize{
\item \code{as_vega(...)}: This method should return a list suitable for inclusion in the 
interaction component of the vega specific. The default method sends
the id, the type (the class name) and the path. If you override it
to add extra data, make sure to use \code{callSuper()} to include
these necessary fields

\item \code{listen_for(name)}: List for a custom message from the client called \code{name}

\item \code{resize()}: A reactive value changes when the plot is resized.
Returns a list containing:
  * plot_id: The ID of the ggvis plot.
  * width: Width of the plot in pixels.
  * height: Height of the plot in pixels.
  * padding: A list containing `left`, `right`, `top`, `bottom`, which is
    the padding in pixels for each side. The padding is inside of the
    width and height values.
  
}}

