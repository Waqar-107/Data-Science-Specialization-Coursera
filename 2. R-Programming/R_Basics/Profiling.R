foo <- function(x) {
  for(i in 1:100000000) x <- x + i
  x
}

bar <- function(x) {
  for(i in 1:1000) x <- x + i
  x
}

# start profiling
# this will create an output file
Rprof("summary.out")

cnt <- foo(1)
cnt2 <- bar(1)

# stop profiling
Rprof(NULL)
stats <- summaryRprof("summary.out")
print(stats)