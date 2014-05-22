cacheSolve <- function(x, ...) {
        #calling of getinverse() from makeCacheMatrix which returns content of the cache
        Inv <- x$getinverse()
        
        # if Inv ist not NULL, the value of Inv in the cache is returned (already calculated)
        if(!is.null(Inv)) {
                message("getting cached data")
                return(Inv)
        }
        #else the inverse is calculated and returned
        data <- x$get()
        Inv <- solve(data, ...)
        x$setinverse(Inv)
        Inv
}