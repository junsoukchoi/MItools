#' Simulation Envelopes of Summary Function
#'
#' Computes simulation envelopes of a summary function.
#'
#' @param Y Object containing point pattern data. A point pattern (object of class "ppp").
#' @param fun Function that computes the desired summary statistic for a point pattern.
#' @param funargs A list, containing extra arguments to be passed to \code{fun}.
#' @param nsim Number of simulated point patterns to be generated when computing the envelopes.
#' @param nrank Integer. Rank of the envelope value amongst the \code{nsim} simulated values. A rank of 1 means that the minimum and maximum simulated values will be used.
#' @param global Logical flag indicating whether envelopes should be pointwise (\code{global=FALSE}) or simultaneous (\code{global=TRUE}).
#'
#' @return An object of class "\code{envelope}" and "\code{fv}", which can be printed and plotted directly.
#'
#' Essentially a data frame containing columns
#' \item{r}{the vector of values of the argument \eqn{r} at which the summary function fun has been estimated}
#' \item{obs}{values of the summary function for the data point pattern}
#' \item{lo}{lower envelope of simulations}
#' \item{hi}{upper envelope of simulations}
#' \item{theo}{the theoretical value \eqn{g_{ij}(r) = 1} for independent marks}
#' and either
#' \item{theo}{heoretical value of the summary function under CSR (Complete Spatial Randomness, a uniform Poisson point process) if the simulations were generated according to CSR}
#' \item{mmean}{testimated theoretical value of the summary function, computed by averaging simulated values, if the simulations were not generated according to CSR.}
#'
#' @export
#'
#' @examples
envelope = function(Y, fun, funargs, nsim = 99, nrank = 1, global = FALSE)
{
   return(spatstat.explore::envelope(Y = Y, fun = fun, nsim = nsim, nrank = nrank, funargs = funargs, global = global))
}
