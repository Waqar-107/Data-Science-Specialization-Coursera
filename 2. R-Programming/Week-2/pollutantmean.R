pollutantMean <- function(directory, pollutant, id = 1:332) {
  data_to_use <- c()
  
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
    pollutantData <- data[pollutant]
    
    pollutantData <- pollutantData[!is.na(pollutantData)]
    data_to_use <- c(data_to_use, pollutantData)
  }
  
  ret <- mean(data_to_use)
  ret
}

print(pollutantMean("specdata", "sulfate", 1:10))
print(pollutantMean("specdata", "nitrate", 70:72))
print(pollutantMean("specdata", "nitrate", 23))
