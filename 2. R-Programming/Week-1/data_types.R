id <- 107
name <- "waqar"
print(id)
print(name)

# Create a vector
# vector contains data of the same type
apple <- c('red','green',"yellow")
print(apple)

# create a list
# list can have different types of data
lst <- list(107, "waqar")
print(lst)

# matrix
m <- matrix(nrow = 2, ncol = 3)
print(attributes(m))
x <- 1:3
y <- 10:12
print(cbind(x, y))
print(rbind(x, y))

# Create a vector.
apple_colors <- c('green','green','yellow','red','red','red','green')

# Create a factor object. this is like c++ set
factor_apple <- factor(apple_colors)

# Print the factor.
print(factor_apple)
print(nlevels(factor_apple))

# Create the data frame.
BMI <- 	data.frame(
  gender = c("Male", "Male","Female"), 
  height = c(152, 171.5, 165), 
  weight = c(81,93, 78),
  Age = c(42,38,26)
)
print(BMI)