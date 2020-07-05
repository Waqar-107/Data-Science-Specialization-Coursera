con <- url("http://biostat.jhsph.edu/~jleek/contact.html")
code <- readLines(con)
close(con)

idx <- list(code[10], code[20], code[30], code[100])
ans <- sapply(idx, nchar)
print(ans)