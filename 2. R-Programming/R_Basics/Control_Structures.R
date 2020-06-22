# if-else
# note: maintain the indentation else it gives error :3
x = 11
if(x > 10){
  print("greater than 10")
} else if(x > 5){
  print("greater than 5")
} else{
  print("greater than 0")
}

# loops
# for
mat <- matrix(data = 1:6, nrow = 2, ncol = 3)
for(i in seq_len(nrow(mat)))
{
  for(j in seq_len(ncol(mat)))
    print(mat[i, j])
}

# while
cnt <- 0
while(cnt < 10){
  print(cnt)
  cnt <- cnt + 1
}

# repeat
cnt <- 0
repeat{
  print(cnt)
  cnt <- cnt + 1
  if(cnt > 10) break
}

# next as in 'continue' in c++/python
cnt <- 0
for(i in 1:10){
  if(i > 5) next
  print(i)
}