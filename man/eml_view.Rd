% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eml_view.R
\name{eml_view}
\alias{eml_view}
\title{View an EML}
\usage{
eml_view(eml_path, ...)
}
\arguments{
\item{eml_path}{Path to the EML one wants to view}

\item{...}{additional arguments to \code{\link{read_xml}}}
}
\value{
Nothing, the EML is viewed in the Viewer.
}
\description{
View an EML
}
\details{
The function needs the \code{listviewer} package which you can install from CRAN
via \code{install.packages("listviewer"))}. The function uses \code{listviewer::jsonedit}
which gives a crude but useful viewing of the EML
}
\examples{
f <- system.file("xsd/test", "eml-datasetWithUnits.xml", package = "EML")
eml_view(f)
 f <- system.file("xsd/test", "eml.xml", package = "EML")
 eml_view(f)
 f <- system.file("xsd/test", "eml-sample.xml", package = "EML")
 eml_view(f)
 f <- system.file("xsd/test", "eml-datasetWithCitation.xml", package = "EML")
 eml_view(f)
 f <- system.file("examples", "example-eml-2.1.0.xml", package = "EML")
 eml_view(f)
}
