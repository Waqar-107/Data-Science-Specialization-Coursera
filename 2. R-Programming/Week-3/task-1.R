# make a matrix, its getter, setter and inverse getter, setter
makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  
  get <- function() x
  
  setInverseMatrix <- function(inv) inverse <<- inv
  getInverseMatrix <- function() inverse
  list(set = set, get = get,
       setInverseMatrix = setInverseMatrix,
       getInverseMatrix = getInverseMatrix)
}


# cacheSolve gets a square matrix object created by "makeCacheMatrix"
# returns the inverse of the square matrix
# if already calculated then return the calculated one
# otherwise calculate, set and return
cacheSolve <- function(x, ...) {
  mat <- x$getInverseMatrix()
  if(!is.null(mat)) {
    message("getting cached data");
    return(mat)
  }
  
  data <- x$get()
  mat <- solve(data)
  x$setInverseMatrix(mat)
  mat
}

# construct a normal matrix
data <- matrix(c(4, 7, 8), nrow = 1, ncol = 3)
data <- rbind(data, c(1, 6, 3))
data <- rbind(data, c(9, 17, 23))

# construct the matrix object
mat1 <- makeCacheMatrix()

# set the matrix
mat1$set(data)

# get the inverse, this will not return the cached data
inv1 <- cacheSolve(mat1)
print(inv1)

# this will return cached data
inv2 <- cacheSolve(mat1)
print(inv2)
