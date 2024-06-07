#' Multitype L-function (cross-type)
#'
#' Calculates an estimate of the cross-type L-function for a multitype point pattern.
#'
#' @param X The observed point pattern, from which an estimate of the cross-type \eqn{L} function \eqn{L_{ij}(r)} will be computed. It must be a multitype point pattern (a marked point pattern whose marks are a factor).
#' @param i The type (mark value) of the points in X from which distances are measured. A character string (or something that will be converted to a character string).
#' @param j The type (mark value) of the points in X to which distances are measured. A character string (or something that will be converted to a character string).
#' @param r numeric vector. The values of the argument \eqn{r} at which the function \eqn{L_{ij}(r)} should be evaluated. There is a sensible default. First-time users are strongly advised not to specify this argument.
#' @param correction A character vector containing any selection of the options \code{"border", "bord.modif", "isotropic", "Ripley", "translate", "translation", "periodic", "none"} or \code{"best"}. It specifies the edge correction(s) to be applied. Alternatively \code{correction="all"} selects all options.
#'
#' @return An object of class "\code{fv}" in \pkg{spatstat}.
#'
#' Essentially a data frame containing columns
#' \item{r}{the vector of values of the argument \eqn{r} at which the function \eqn{L_{ij}(r)} has been estimated}
#' \item{theo}{the theoretical value \eqn{L_{ij}(r)=r} for a stationary Poisson process}
#' together with columns named \code{"border"}, \code{"bord.modif"}, \code{"iso"} and/or \code{"trans"}, according to the selected edge corrections. These columns contain estimates of the function \eqn{L_{ij}(r)} obtained by the edge corrections named.
#'
#' @export
#'
#' @examples
Lcross = function(X, i, j, r=NULL, correction)
{
   return(spatstat.explore::Lcross(X = X, i = i, j = j, r, correction = correction))
}
