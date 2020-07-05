library(httr)
library(httpuv)
library(jsonlite)

oauth_endpoints("github")
myapp <- oauth_app("github",
                   key = "528c7e9d2f6a92a8fdef",
                   secret = "a145fc1d7de943772cfc244798534fd4465041a8"
                  )

# Get OAuth credentials
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

# Use API
gtoken <- config(token = github_token)
req <- GET("https://api.github.com/users/jtleek/repos", gtoken)

# Take action on http error
stop_for_status(req)

# Extract content from a request
jsonData = content(req)

# convert to data-frame
data = jsonlite::fromJSON(jsonlite::toJSON(jsonData))

ans <- data[data$full_name == "jtleek/datasharing", "created_at"] 
print(ans)