#get latitudes from a raster object

latsfromr <- function(r) {
  e <- raster::extent(r)
  lts <- rep(seq(e@ymax - res(r)[2] / 2, e@ymin + res(r)[2] / 2, length.out = dim(r)[1]), dim(r)[2])
  lts <- array(lts, dim = dim(r)[1:2])
  lts
}

#get longitudes from a raster object

lonsfromr <- function(r) {
  e <- raster::extent(r)
  lns <- rep(seq(e@xmin + res(r)[1] / 2, e@xmax - res(r)[1] / 2, length.out = dim(r)[2]), dim(r)[1])
  lns <- lns[order(lns)]
  lns <- array(lns, dim = dim(r)[1:2])
  lns
}