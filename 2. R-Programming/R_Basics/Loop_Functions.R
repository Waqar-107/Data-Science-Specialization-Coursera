# lapply() : Loop over a list and evaluate a function on each element
# sapply() : same as lapply but simplifies the list
pow <- function(x){
  x ^ 2
}

l <- list(1, 2, 3, 4, 5, 6, 7)
p <- lapply(l, pow)
sp <- sapply(l, pow)
print(p)
print(sp)

x <- list(a = 1:5, b = rnorm(10))
#print(lapply(x, mean))

