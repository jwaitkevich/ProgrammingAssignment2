## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#Set the Matrix, Get the Matrix, Set the Inverse and Get the Inverse 
#Because the inverse is less costly
makeCacheMatrix <- function(x = matrix()) {
  invMatrix <- NULL
  
  setMatrix <- function(y) {
      x <<- y
      invMatrix <<- NULL
  }
  
  getMatrix <- function() x
  setInverse <- function(inverse) invMatrix <<- inverse
  getInverse <- function() invMatrix
  
  list(setMatrix = setMatrix, getMatrix = getMatrix,
       setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
#Solves the makeCacheMatrix to test for value
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invMatrix <- x$getInverse()
  if(!is.null(invMatrix)) {
    message("Getting cached invMatrix")
    return(invMatrix)
  }
  
  MatrixData <- x$getMatrix()
  invMatrix <- solve(MatrixData, ...)
  x$setInverse(invMatrix)
  return(invMatrix)
  )
}
