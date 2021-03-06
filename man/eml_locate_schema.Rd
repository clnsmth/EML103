% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eml_validate.R
\name{eml_locate_schema}
\alias{eml_locate_schema}
\title{eml_locate_schema}
\usage{
eml_locate_schema(eml, ns = NA)
}
\arguments{
\item{eml}{an xml2::xml_document instance for an EML document}

\item{ns}{the namespace URI for the top (root) element}
}
\value{
fully qualified path to the XSD schema for the appropriate version of EML
}
\description{
eml_locate_schema returns the location of the XSD schema file for a given
EML document, as shipped with the EML R package.
}
\details{
The schema location is based on the last path component from the EML
namespace (e.g., eml-2.1.1), which corresponds to the directory containing xsd
files that ship with the EML package. Schema files are copies of the schemas
from the EML versioned releases. If an appropriate schema is not found,
the function returns FALSE.
}
\examples{
\donttest{
f <- system.file("examples", "example-eml-2.1.1.xml", package = "EML")
eml <- xml2::read_xml(f)
schema <- eml_locate_schema(eml)
}
}
