m<- matrix(1:4,2,2)
m
cm <- makeCacheMatrix(m)
cs <- cacheSolve(cm)
cs
m1 <-solve(m)

