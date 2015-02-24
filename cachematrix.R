## Two R functions to cache potentially time-consuming computations.


## `makeCacheMatrix`: This function creates a special "matrix" object
<<<<<<< HEAD
##  that can cache its inverse
=======
## that can cache its inverse
>>>>>>> 56f54fb3d6c7bd72af23d9663b71434ab2663da0

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x <<- y
<<<<<<< HEAD
                m <<- NULL 
        }
        get <- function() x
        setmean <- function(solve) m <<- solve
=======
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
>>>>>>> 56f54fb3d6c7bd72af23d9663b71434ab2663da0
        getmean <- function() m
        list(set = set, get = get, setmean = setmean, getmean = getmean)
}

<<<<<<< HEAD
## `cacheSolve`: This function returns a matrix that is the inverse of 'x'. 
##  If the inverse has already been calculated (and the matrix has not changed), 
##  then `cacheSolve` should retrieve the inverse from the cache.
=======
## `cacheSolve`: This function returns a matrix that is the inverse of 'x'.
## If the inverse has already been calculated (and the matrix has not changed),
## then `cacheSolve` should retrieve the inverse from the cache.
>>>>>>> 56f54fb3d6c7bd72af23d9663b71434ab2663da0

cacheSolve <- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setmean(m)
        m
}
