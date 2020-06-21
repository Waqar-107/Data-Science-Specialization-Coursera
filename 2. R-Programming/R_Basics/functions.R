# the last line will be returned
mean <- function(a, b, c){
  (a + b + c) / 3
}


# we can use ... to supply inf arguments but the arguments after that must have defaults 
div <- function(..., div = 2){
  sum(...) / div
}

print(mean(1, 2, 4))
print(div(4, 6, 7 ,8, 9))

# this will let us know about the arguments of a function
print(args(div))

# ------------------------------------------
# we can also pass functions as parameter
uno <- function(){
  print("uno")
}

dos <- function(){
  print("dos")
}

eval <- function(func){
  func()
}

eval(uno)
# ------------------------------------------
