#' K-function
#'
#' Estimates Ripley's reduced second moment function \eqn{K(r)} from a point pattern in a window of arbitrary shape.
#'
#' @param X The observed point pattern, from which an estimate of \eqn{K(r)} will be computed. It must be a multitype point pattern (a marked point pattern whose marks are a factor).
#' @param i The type (mark value) of the points in \code{X} from which an estimate of \eqn{K(r)} will be computed. A character string (or something that will be converted to a character string).
#' @param r Optional. Vector of values for the argument \eqn{r} at which \eqn{K(r)} should be evaluated. Users are advised not to specify this argument; there is a sensible default.
#' @param correction Optional. A character vector containing any selection of the options \code{"none", "border", "bord.modif", "isotropic", "Ripley", "translate", "translation", "rigid", "periodic", "good"} or \code{"best"}. It specifies the edge correction(s) to be applied. Alternatively \code{correction="all"} selects all options.
#'
#' @return An object of class "\code{fv}" in \pkg{spatstat}.
#'
#' Essentially a data frame containing columns
#' \item{r}{the vector of values of the argument \eqn{r} at which the function \eqn{K} has been estimated}
#' \item{theo}{the theoretical value \eqn{K(r) = \pi r^2} for a stationary Poisson process}
#' together with columns named \code{"border", "bord.modif", "iso"} and/or \code{"trans"}, according to the selected edge corrections. These columns contain estimates of the function \eqn{K(r)} obtained by the edge corrections named.
#'
#' @export
#'
#' @examples
Kest = function(X, i, r=NULL, correction="isotropic")
{
   Xi = spatstat.geom::subset.ppp(X, marks == i, drop = TRUE)
   return(spatstat.explore::Kest(X = Xi, r = r, correction = correction, nlarge = 10000))
}
