corr <- function(directory, threshold = 0) {
  data <- complete(directory, 1:332)
  data <- subset(data, nobs > threshold)
  idx <- data[["id"]]
  
  res <- c()
  
  for(i in idx) {
    if (i < 10)
      path <- paste(directory, "/00", i, ".csv", sep = "")
    else if (i < 100)
      path <- paste(directory, "/0", i, ".csv", sep = "")
    else
      path <- paste(directory, "/", i, ".csv", sep = "")
    
    
    data <- read.csv(path)
    data <- subset(data, !is.na(sulfate) & !is.na(nitrate))
    res <- c(res, cor(data$sulfate, data$nitrate))
  }
  
  res
}

source("complete.R")
