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
#' # load pre-processed lung cancer data
#' load(url("https://github.com/julia-wrobel/MI_tutorial/raw/main/Data/lung.RDA"))
#'
#' # randomly select a lung cancer image and define cell types
#' library(dplyr)
#' subj_df = filter(lung_df, image_id == "#73 6-333-711_[44841,18646].im3")
#' subj_df = subj_df %>%
#'    mutate(phenotype = case_when(
#'       phenotype_cd19 == "CD19+" ~ "CD19+ B-cell",
#'       phenotype_cd14 == "CD14+" ~ "CD14+ cell",
#'       phenotype_cd8 == "CD8+" ~ "CD8+ T-cell",
#'       phenotype_cd4 == "CD4+" ~ "CD4+ T-cell",
#'       phenotype_ck  == "CK+" ~ "CK+ cancer cell",
#'       TRUE ~ "Other"
#'    ))
#'
#' # convert the selected lung cancer image into the object of class "ppp" representing a multitype point pattern
#' pp_lung = multitype.pp(subj_df$x, subj_df$y, subj_df$phenotype)
#'
#' # plot the multitype point pattern
#' plot(pp_lung, main = "Lung cancer image", cols = 2 : 7)
multitype.pp = function(x, y, marks, xrange = c(min(x), max(x)), yrange = c(min(y), max(y)), poly=NULL, unitname=NULL)
{
   return(spatstat.geom::ppp(x = x, y = y, xrange = xrange, yrange = yrange, poly = poly, unitname = unitname, marks = factor(marks)))
}
