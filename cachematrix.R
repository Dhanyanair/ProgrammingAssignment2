## The following 2 functions cache the inverse of a matrix. Matrix inversion is costly computation , so we can benefit by caching the 
#inverse.

## The below function creates a list containing a function to do the following.
#1. set the value of the matrix.
#2.get thevalue of the matrix
#3.set the inverse of the matrix
#4.get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inver <- NULL 
   set <- function(y) { 
   x <<- y 
   inver <<- NULL 
    } 
   get <- function() x 
   setinverse <- function(inverse) inver <<- inverse 
   getinverse <- function() inver 
   list(set=set, get=get, setinverse=setinverse, getinverse=getinverse) 
}


## The following function returns the inverse of a matrix. It first checks if the inverse is already cached.
#If not, then it computes the inverse and caches it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
       inver <- x$getinverse() 
       if(!is.null(inver)) { 
        message("getting cached data.") 
        return(inver) 
     } 
     data <- x$get() 
     inver <- solve(data) 
     x$setinverse(inver) 
     inver

}
