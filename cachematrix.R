## inverting matrix cache
## 

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m<-NULL
set <- function(y) {
  x <<- y
  m <<- NULL
}
get <- function() x
setinverse <- function(solve) m <<- inverse
getinverse <- function() m
list(set = set, get = get,
     setinverse = setinverse,
     getinverse = getinverse)
}


cacheSolve <- function(x, ...) {
    m <- x$getinversematrix()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinversematrix(m)
    m
  }
