\name{layer}
\alias{is.layer}
\alias{layer}
\title{Create a new layer.}
\usage{
layer(..., drop_named = FALSE)

is.layer(x)
}
\arguments{
  \item{...}{components: data, \code{\link{props}},
  \code{layer}es, or \code{\link{marks}}}

  \item{drop_named}{if \code{FALSE}, the default, will
  throw an error if any of the arguments in \code{...} are
  named. If \code{TRUE} it will silently drop them - this
  is primarily useful for \code{layer_} functions which
  send named arguments to the transform, and unnamed
  arguments to the layer.}

  \item{x}{object to test for "layer"-ness}
}
\description{
Layers are used to describe the data hierarchy of ggvis. As
well as using this function to create them, you can also
use the many specialised \code{layer_} functions that
combine marks and transforms to create useful
visualisations.
}
\section{Hierarchy}{
  A ggvis plot has a hierarchical structure, where each
  layer inherits data and properties from its parent. This
  is somewhat similar to ggplot2, but ggplot2 plots only
  had a single layer of hierarchy - with ggvis, you can
  have multiple levels, making it easier to avoid
  redundancy, both in your specification and in
  computation.

  For example, take a linear model. You often want to
  display both the predictions and the standard error from
  a linear model. In ggplot2, you had to use
  \code{geom_smooth()}, which was a special geom that
  combined a line and a ribbon. With ggvis, you can do it
  yourself by using two marks nested inside a layer: (and
  in fact, this is exactly how \code{\link{layer_smooth}})
  works.

  \code{ ggvis(mtcars, props(x = ~disp, y = ~mpg),
  layer(transform_smooth(), mark_area(props(y = ~y_min, y2
  = ~y_max, fill := "#eee")), mark_path() ), mark_symbol()
  ) }
}

