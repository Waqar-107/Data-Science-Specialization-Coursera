complete <- function(directory, id = 1:332) {
  res <- data.frame()
  
  # for all the files separate the data and concatenate with the actual data
  for (i in id)
  {
    if (i < 10)
      path <- paste(directory, "/00", i, ".csv", sep = "")
    else if (i < 100)
      path <- paste(directory, "/0", i, ".csv", sep = "")
    else
      path <- paste(directory, "/", i, ".csv", sep = "")
    
    
    data <- read.csv(path)
    arr <- subset(data, !is.na(sulfate) & !is.na(nitrate))
    
    newrow = data.frame(id = i, nobs = nrow(arr))
    res <- rbind(res, newrow)
  }
  
  res
}

# print(complete("specdata", 1))
# print(complete("specdata", c(2, 4, 8, 10, 12)))
# print(complete("specdata", 30:25))
# print(complete("specdata", 3))