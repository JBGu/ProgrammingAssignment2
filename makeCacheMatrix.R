
# makeCacheMatrix return a list of 4 functions to :
# Set  and get the value of the matrix
# Set the value of the inverse get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
        #set cache of the inverse matrix to NULL
        Inv <- NULL
        
        #creates four subfunctions set(), get(), setinverse(), getinverse()
        
        # <<- operator allows to modify x and Inv in parent environment
        set <- function(y) {
                x <<- y
                Inv <<- NULL
        }
       
        #get() grabs x and return it
        get <- function() x
       
       #setinverse()saves the inverse matrix in the cache
        setinverse <- function(inverse) Inv <<- inverse
       
       # getinverse() returns the content of the cache
       getinverse <- function() Inv
        
        #places the fours function in a list
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}