# Ranking hospitals by outcome in a state
# state: string of length 2 with the state abbreviation
# outcome: can be one of “heart attack”, “heart failure”, or “pneumonia”
# heart attack: 11, heart failure: 17, pneumonia: 23
rankHospitals <- function(state, outcome, rank) {
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
  
  sortedData <- tempData[order(tempData$Val, tempData$Name), ]
  
  if(rank == "worst") ret <- sortedData[nrow(sortedData), 1]
  else if(rank == "best") ret <- sortedData[1, 1]
  else ret <- sortedData[as.numeric(rank), 1]
  
  ret
}

print(rankHospitals("NY", "heart attack", 7))