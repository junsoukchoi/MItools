#' Multitype pair correlation function (cross-type)
#'
#' Calculates an estimate of the cross-type pair correlation function for a multitype point pattern.
#'
#' @param X The observed point pattern, from which an estimate of the cross-type pair correlation function \eqn{g_{ij}(r)} will be computed. It must be a multitype point pattern (a marked point pattern whose marks are a factor).
#' @param i The type (mark value) of the points in \code{X} from which distances are measured. A character string (or something that will be converted to a character string).
#' @param j The type (mark value) of the points in \code{X} to which distances are measured. A character string (or something that will be converted to a character string).
#' @param r Vector of values for the argument \eqn{r} at which \eqn{g_{ij}(r)} should be evaluated. There is a sensible default. First-time users are strongly advised not to specify this argument.
#' @param correction Character string specifying the edge correction(s) to be used. Options are \code{"isotropic", "Ripley", "translate"} and \code{"best"}. Alternatively \code{correction="all"} selects all options.
#'
#' @return An object of class "\code{fv}" in \pkg{spatstat}.
#'
#' Essentially a data frame containing columns
#' \item{r}{the vector of values of the argument \eqn{r} at which the function \eqn{g_{ij}(r)} has been estimated}
#' \item{theo}{the theoretical value \eqn{g_{ij}(r) = 1} for independent marks}
#' together with columns named \code{"iso"} and/or \code{"trans"}, according to the selected edge corrections. These columns contain estimates of the function \eqn{g_{ij}(r)} obtained by the edge corrections named.
#'
#' @export
#'
#' @examples
pcfcross = function(X, i, j, r=NULL, correction=c("isotropic", "Ripley", "translate"))
{
   return(spatstat.explore::pcfcross(X = X, i = i, j = j, r = r, correction = correction))
}
