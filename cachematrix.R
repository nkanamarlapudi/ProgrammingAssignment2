## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <<- solve
  if(!is.null(m)){
        message("getting cahced data")
        return(m)
  }
  data <- makeCacheMatrix(x)
  m <- solve(data)
  m
}
