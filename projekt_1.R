getwd()

# install.packages('Rtools')
install.packages('httr')
install.packages('jsonlite')

library(httr)
library(jsonlite)

# writeLines('PATH="${RTOOLS40_HOME}\\usr\\bin;${PATH}"', con = "~/.Renviron")

# Sys.which("make")

# install.packages('installr')
# library(installr)
# updateR()

print('hello')

endpoint <- "https://api.openweathermap.org/data/2.5/weather?q=Warszawa&appid=1765994b51ed366c506d5dc0d0b07b77"
getWeather <- GET(endpoint)

# getWeather$content

weatherText <- content(getWeather, "text")
weatherJson <- fromJSON(weatherText, flatten = T)
weatherDF <- as.data.frame(weatherJson)

# ?as.data.frame



