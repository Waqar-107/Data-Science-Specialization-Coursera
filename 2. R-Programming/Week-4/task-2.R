# Finding the best hospital in a state
# state: string of length 2 with the state abbreviation
# outcome: can be one of “heart attack”, “heart failure”, or “pneumonia”
# heart attack: 11, heart failure: 17, pneumonia: 23
best <- function(state, outcome){
  # validate state
  if(!any(data$State == state))
    stop("invalid state")
  
  # validate outcome
  if(outcome == "heart attack") 
    jdx <- 11
  else if(outcome == "heart failure") 
    jdx <- 17
  else if(outcome == "pneumonia")
    jdx <- 23
  else stop("invalid outcome")
  
  # state: 7, hospital name : 2
  
  tempData <- data[, c(2, 7, jdx)]
  names(tempData) <- c("Name", "State", "Val")
  tempData <- subset(tempData, State == state & Val != "Not Available")
  tempData <- transform(tempData, Val = as.numeric(Val))
  
  # index of the row with minimum Val
  mn <- which.min(tempData$Val)
  tempData[mn, 1]
}

data <- read.csv("outcome-of-care-measures.csv")
print(best("AK", "pneumonia"))
