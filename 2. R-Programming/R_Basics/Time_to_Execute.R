# time to execute
foo <- function(x) {
  for(i in 1:1000) x <- x + i
  x
}

y <- foo(1)
t <- system.time(svd(y))
print(t)