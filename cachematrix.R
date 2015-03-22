## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(a = matrix()) {
m <- NULL
set <- function(b)
{
a <<- b
m <<- NULL
}
get <- function() a
setinverse <- function(inverse) m <<- inverse
getinverse <- function() m
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(a, ...) {
        # Need to compare matrix to what was there before
               m <- x$getinverse() # check to see if cacheSolve has been run before.
if(!is.null(m)) {  # check that matrix hasn't changed
message("getting cached data")
return(m)
}
data <- a$get()
m <- solve(data, ...)
a$setinverse(m) # run the setinverse function on the inverse to cache the inverse
m # return the inverse
}
}
