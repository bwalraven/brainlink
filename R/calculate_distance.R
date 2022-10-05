#' Title: calculate_distance
#'
#' Calculates the geodetic distance between two points
#'
#' @param XStart vector of starting longitude points
#' @param XEnd vector of ending longitude points
#' @param YStart vector of starting latitude points
#' @param YEnd vector of ending latitude points
#'
#' @return A vector with path lengths in kms
#' @export

calculate_distance <- function(XStart, XEnd, YStart, YEnd){

  # Compute path length from longitude and latitude.
  PathLength <- c(NA)
  for (nr in 1:length(XStart))
  {
    PathLength[nr] <- geosphere::distVincentyEllipsoid(c(XStart[nr], YStart[nr]), c(XEnd[nr], YEnd[nr]))
  }
  # Convert PathLength from m to km.
  PathLength <- PathLength/1000

  # Return PathLength
  return(PathLength)
}
