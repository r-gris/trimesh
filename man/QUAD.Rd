% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/QUAD-model.R
\name{QUAD}
\alias{QUAD}
\alias{QUAD.matrix}
\alias{QUAD.BasicRaster}
\title{QUAD model}
\usage{
QUAD(x, ...)

\method{QUAD}{matrix}(x, ...)

\method{QUAD}{BasicRaster}(x, ...)
}
\arguments{
\item{x}{raster alike, or a matrix}

\item{...}{ignored}
}
\value{
QUAD model
}
\description{
The QUAD model is a silicate-like model for raster data, with
implicit geometry.
}
\details{
The object table only stores the raster extent, and the pixel values
are on the 'quad' table. This is only supported for single-layer 2D
regular rasters.

The 'color_' idiom works, but must be put on the '$quad' table.
Very much still in-development.
}
\examples{
qq <-  QUAD(raster::raster(volcano))
mesh_plot(qq)
qq$quad$color_ <- rep(c("black", "white"), length.out = nrow(qq$quad))
mesh_plot(qq)
qq$quad$color_ <- palr::image_pal(qq$quad$value, col = grey.colors(10))
mesh_plot(qq)
}
