#' Pair Correlation Function
#'
#' Estimate the pair correlation function.
#'
#' @param X The observed point pattern, from which an estimate of the pair correlation function \eqn{g(r)} will be computed. It must be a multitype point pattern (a marked point pattern whose marks are a factor).
#' @param i The type (mark value) of the points in \code{X} from which an estimate of \eqn{g(r)} will be computed. A character string (or something that will be converted to a character string).
#' @param r Optional. Vector of values for the argument \eqn{r} at which \eqn{g(r)} should be evaluated. Users are advised not to specify this argument; there is a sensible default.
#' @param correction Optional. Character string specifying the edge correction(s) to be used. Options are \code{"isotropic", "Ripley", "translate"} and \code{"best"}. Alternatively \code{correction="all"} selects all options.
#'
#' @return An object of class "\code{fv}" in \pkg{spatstat}.
#'
#' Essentially a data frame containing columns
#' \item{r}{the vector of values of the argument \eqn{r} at which the function \eqn{g(r)} has been estimated}
#' \item{theo}{the theoretical value \eqn{g(r) = 1} for a stationary Poisson process}
#' together with columns named \code{"iso"} and/or \code{"trans"}, according to the selected edge corrections. These columns contain estimates of the function \eqn{g(r)} obtained by the edge corrections named.
#'
#' @export
#'
#' @examples
pcfest = function(X, i, r=NULL, correction="isotropic")
{
   Xi = spatstat.geom::subset.ppp(X, marks == i, drop = TRUE)
   return(spatstat.explore::pcf(X = Xi, r = r, correction = correction, nlarge = 10000))
}
