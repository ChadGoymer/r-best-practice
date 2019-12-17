library(bookdown)
library(rsconnect)

username    <- sub("int_", "", Sys.info()[["login"]])
certificate <- "C:/R/cacert.cer"

rsconnect::addConnectServer(name = "Prod", url = "https://rsconnect", certificate = certificate)
# rsconnect::connectUser(account = username, server = "Prod")

bookdown::publish_book(name = "r-best-practice", account = username, server = "Prod", render = "local")
