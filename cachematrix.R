## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inverseMatrix <- NULL
    
    set <- function(y){
        x <<- y
        inverseMatrix <<- NULL
    }
    
    get <- function(){ 
        x 
    }
    
    setinverse <- function (inverse){
        inverseMatrix <<- inverse
    }
    
    getinverse <- function(){
        inverseMatrix
    }
    
    exposedFunctions <- list(get=get,set=set,getinverse=getinverse,setinverse=setinverse)
    
    print(exposedFunctions)
    return (exposedFunctions)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    
    inverse <- x$getinverse()
    if( ! is.null(inverse) ){
        message("getting cached data")
        return (inverse)
    }
    
    ##message("Not In Cache. Calculating inverse matrix")
    data <- x$get()
    inverse <- solve(data)
    x$setinverse(inverse)
    inverse
}
