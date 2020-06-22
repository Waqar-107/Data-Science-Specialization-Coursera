corr <- function(directory, threshold = 0) {
  data <- complete(directory, 1:1)
  data <- subset(data, nobs > threshold)
  idx <- data[["id"]]
  print(idx)
}

source("complete.R")
cr <- corr("specdata", 10)
head(cr)