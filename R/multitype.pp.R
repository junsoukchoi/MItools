#' Create a Multitype Point Pattern
#'
#' Creates an object of class "ppp" representing a multitype point pattern dataset in the two-dimensional plane.
#'
#' @param x Vector of \eqn{x} coordinates of data points.
#' @param y Vector of \eqn{y} coordinates of data points.
#' @param marks mark values for the points. A vector or data frame.
#' @param xrange \eqn{x} coordinate limits of enclosing box
#' @param yrange \eqn{y} coordinate limits of enclosing box
#' @param poly Optional. Polygonal boundary of window. Incompatible
#' @param unitname Optional. Name of unit of length. Either a single character string, or a vector of two character strings giving the singular and plural forms, respectively.
#'
#' @return An object of class "ppp" describing a multittype point pattern in the two-dimensional plane.
#'
#' @export
#'
#' @examples
multitype.pp = function(x, y, marks, xrange = c(min(x), max(x)), yrange = c(min(y), max(y)), poly=NULL, unitname=NULL)
{
   return(spatstat.geom::ppp(x = x, y = y, xrange = xrange, yrange = yrange, poly = poly, unitname = unitname, marks = factor(marks)))
}
