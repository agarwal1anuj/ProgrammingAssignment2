## This function cached a matrix and its inverse

makeCacheMatrix=function(x=matrix()){
  set=function(y){
    m<<-y
  }
  get=function() m
  setinv=function(y){
    i<<-y    
  }
  getinv=function() i
  ##set(a,b,c)
  ##setinv(m)
  list(set=set,get=get,setinv=setinv,getinv=getinv)  
}


}


## This function checks if x is equal to matrix in cache and is inverse of it already in cache, if so it returns the cached inverse else calculate new inverse

cacheSolve = function(x,...){  
  if ((x==t$get()) && (!is.null(t$getinv()))){
    print("Retriving from Cache")
    l=t$getinv()
    return(l)
  }
  im=solve(x)  
  t$setinv(im)  
  t$getinv()
}

