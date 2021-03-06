% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lfda.R
\name{lfda}
\alias{lfda}
\title{Local Fisher Discriminant Analysis for
Supervised Dimensionality Reduction}
\usage{
lfda(x, y, r, metric = c("orthonormalized", "plain", "weighted"),
  knn = 5)
}
\arguments{
\item{x}{n x d matrix of original samples.
n is the number of samples.}

\item{y}{length n vector of class labels}

\item{r}{dimensionality of reduced space (default: d)}

\item{metric}{type of metric in the embedding space (no default)
'weighted'        --- weighted eigenvectors
'orthonormalized' --- orthonormalized
'plain'           --- raw eigenvectors}

\item{knn}{parameter used in local scaling method (default: 5)}
}
\value{
list of the LFDA results:
\item{T}{d x r transformation matrix (Z = x * T)}
\item{Z}{n x r matrix of dimensionality reduced samples}
}
\description{
Performs local fisher discriminant analysis (LFDA) on the given data.
}
\details{
LFDA is a method for linear dimensionality reduction that maximizes
between-class scatter and minimizes within-class scatter while at the
same time maintain the local structure of the data so that multimodal
data can be embedded appropriately. Its limitation is that it only
looks for linear boundaries between clusters. In this case, a non-linear
version called kernel LFDA will be used instead. Three metric types can
be used if needed.
}
\examples{

k <- iris[, -5]
y <- iris[, 5]
r <- 3
lfda(k, y, r, metric = "plain")
}
\references{
Sugiyama, M (2007).
Dimensionality reduction of multimodal labeled data by
local Fisher discriminant analysis.
\emph{Journal of Machine Learning Research}, vol.\bold{8}, 1027--1061.

Sugiyama, M (2006).
Local Fisher discriminant analysis for supervised dimensionality reduction.
In W. W. Cohen and A. Moore (Eds.), \emph{Proceedings of 23rd International
Conference on Machine Learning (ICML2006)}, 905--912.
}
\seealso{
See \code{\link{klfda}} for the kernelized variant of
         LFDA (Kernel LFDA).
}
\author{
Yuan Tang
}
\keyword{discriminant}
\keyword{fisher}
\keyword{lfda}
\keyword{local}
\keyword{mahalanobis}
\keyword{metric}
\keyword{transformation}
