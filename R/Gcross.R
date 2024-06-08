#' Multitype Nearest Neighbour Distance Function (i-to-j)
#'
#' For a multitype point pattern, estimate the distribution of the distance from a point of type \eqn{i} to the nearest point of type \eqn{j}.
#'
#' @param X The observed point pattern, from which an estimate of the cross type distance distribution function \eqn{G_{ij}(r)} will be computed. It must be a multitype point pattern (a marked point pattern whose marks are a factor).
#' @param i The type (mark value) of the points in \code{X} from which distances are measured. A character string (or something that will be converted to a character string).
#' @param j The type (mark value) of the points in \code{X} to which distances are measured. A character string (or something that will be converted to a character string).
#' @param r numeric vector. The values of the argument \eqn{r} at which the distribution function \eqn{G_{ij}(r)} should be evaluated. There is a sensible default. First-time users are strongly advised not to specify this argument.
#' @param correction Character string specifying the edge correction(s) to be used. Options are \code{"none", "rs", "km", "hanisch"} and \code{"best"}. Alternatively \code{correction="all"} selects all options.
#'
#' @return An object of class "\code{fv}" in \pkg{spatstat}.
#'
#' Essentially a data frame containing columns
#' \item{r}{the values of the argument \eqn{r} at which the function \eqn{G_{ij}(r)} has been estimated}
#' \item{raw}{the uncorrected estimate of \eqn{G_{ij}(r)}, i.e., the empirical distribution of the distances from each point of type \eqn{i} to the nearest point of type \eqn{j}}
#' \item{theo}{the theoretical value \eqn{G_{ij}(r)=r} for a stationary Poisson process}
#' together with columns named \code{"rs"}, \code{"km"}, and/or \code{"han"}, according to the selected edge corrections. These columns contain estimates of the function \eqn{G_{ij}(r)} obtained by the edge corrections named. If \code{correction = "km"}, an additional column \code{hazard} provides the hazard rate \eqn{\lambda(r)} of \eqn{G_{ij}(r)} by the spatial Kaplan-Meier method.
#'
#' @export
#'
#' @examples
Gcross = function(X, i, j, r=NULL, correction=c("rs", "km", "han"))
{
   return(spatstat.explore::Gcross(X = X, i = i, j = j, r = r, correction = correction))
}
