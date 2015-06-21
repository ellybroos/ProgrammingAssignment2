# Function to compute the inverse of a matrix with caching
# Caching function returns a vector

makeCacheMatrix <- function(x = matrix()) {
set <- function(y) {
  x<<-y
  m <<-NULL
  
}
get <- function() x
setinverse <- function(inverse) m <<- inverse
getinverse <- function() m

list(set, get, setinverse, getinverse)

}
## this calculates the inverse of an assumed square matrix, or retrieves
## an inverse from cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
m <- x$getinverse()
if(!is.null(m)) {
  return(m)
}
data <- x$get()
m <- solve(data) %*%data
x$setinverse(m)
}
