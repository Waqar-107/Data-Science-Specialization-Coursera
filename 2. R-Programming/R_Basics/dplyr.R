# dplyr
library("dplyr")

data <- tbl_df(read.csv("hospital-data.csv"))
print(tbl_df)

# select a subset
# column order can be arbitrary
#ss <- select(data, col1, col2, col3)

# we can even use :
# ss <- select(data, col1:col3)

# omit column
# ss <- select(data, -(col2:col5))

# filter
# first the data variable name then logics
# ss <- filter(data, col1 == "omuk", col2 >= "tomuk")

# arrange
# asc <- arrange(data, colname)
# desc <- arrange(data, desc(colname))

# mutate
# this adds new column
# ss <- mutate(data, newField1 = col1 * 10, newField2 = "val")