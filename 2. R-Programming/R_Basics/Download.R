# create the directory
if(!file.exists("downloads")){
  dir.create("downloads")
}

fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(fileurl, destfile = "./downloads/data5.csv", "curl")
list.files("./downloads")