#' Permutation Envelopes of Summary Function
#'
#' Computes permutation envelopes of a summary function.
#'
#' @param Y Object containing point pattern data. A point pattern (object of class "ppp").
#' @param fun Function that computes the desired summary statistic for a point pattern.
#' @param funargs A list, containing extra arguments to be passed to \code{fun}.
#' @param nsim Number of simulated point patterns to be generated when computing the envelopes.
#' @param nrank Integer. Rank of the envelope value amongst the \code{nsim} simulated values. A rank of 1 means that the minimum and maximum simulated values will be used.
#'
#' @return An object of class "\code{envelope}" and "\code{fv}", which can be printed and plotted directly.
#'
#' Essentially a data frame containing columns
#' \item{r}{the vector of values of the argument \eqn{r} at which the summary function fun has been estimated}
#' \item{obs}{values of the summary function for the data point pattern}
#' \item{lo}{lower envelope of simulations}
#' \item{hi}{upper envelope of simulations}
#' and either
#' \item{mmean}{testimated theoretical value of the summary function, computed by averaging simulated values, if the simulations were not generated according to CSR.}
#'
#' @export
#'
#' @examples
permute.envelope = function(Y, fun, funargs, nsim = 39, nrank = 1)
{
   return(spatstat.explore::envelope(Y = Y, fun = fun, nsim = nsim, nrank = nrank, funargs = funargs, simulate = expression(spatstat.random::rlabel(Y))))
}
