# Ranking hospitals by outcome in a state
# state: string of length 2 with the state abbreviation
# outcome: can be one of “heart attack”, “heart failure”, or “pneumonia”
# heart attack: 11, heart failure: 17, pneumonia: 23
rankAll <- function(outcome, rank) {
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
  names(tempData) <- c("hospital", "state", "val")
  
  tempData <- subset(tempData, val != "Not Available")
  tempData <- transform(tempData, val = as.numeric(val))
  states <- unique(tempData[, 2])
  
  ans <- data.frame()
  
  for(st in states){
    x <- subset(tempData, state == st)
    x <- x[order(x$val, x$hospital), ]
    
    if(rank == "worst") idx <- nrow(x)
    else if(rank == "best") idx <- 1
    else idx <- as.numeric(rank)

    newrow <- data.frame(hospital = x[idx, 1], state = st)
    ans <- rbind(ans, newrow)
  }

  ans <- ans[order(ans$state, ans$hospital), ]
}

r <- rankAll("heart failure", 10)
print(as.character(subset(r, state == "NV")$hospital))