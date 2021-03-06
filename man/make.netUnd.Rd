% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/netUnd.R
\name{make.netUnd}
\alias{make.netUnd}
\title{Undirected Network}
\usage{
make.netUnd(x, disp = FALSE, alpha = 0.003, cap = FALSE, pct = 10,
  merge = TRUE, carrier = FALSE, metro = FALSE)
}
\arguments{
\item{x}{Data frame}

\item{disp}{Uses the Serrano's disparity filter (\url{https://en.wikipedia.org/wiki/Disparity_filter_algorithm_of_weighted_network})
to extract the backbone of the network.}

\item{alpha}{Argument for disparity filter.}

\item{cap}{Filters original data based on the edge weight.}

\item{pct}{Argument for cap filter. Value should be imput as percentage.}

\item{merge}{When set to FALSE, it keeps parallel edges instead of collapsing them
and summing their weights.}

\item{carrier}{Groups data per carrier and OD}

\item{metro}{Groups data by metropolitan area}
}
\description{
Generates Undirected Network with an iGraph \strong{gUnd} object,
a Data Frame \strong{netUnd} and a Data Frame
with Airport/Nodes statistics \strong{nodes}.
}
\examples{
\dontrun{
make.netUnd(OD_Sample)

# Apply Disparity Filter
make.netUnd(OD_Sample, disp = TRUE, alpha = 0.05)

# Apply Percentage Cap
make.netUnd(OD_Sample, cap = TRUE, pct = 20)
}

}
