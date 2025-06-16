# Load quantmod
library(quantmod)

# Fetch NIFTY 50 (^NSEI) from 2015-01-01 to today
nifty <- getSymbols(
  "^NSEI",
  src        = "yahoo",
  from       = "2015-01-01",
  to         = "2025-03-31",
  auto.assign= FALSE
  )

nifty_ac <- getSymbols(
  "^NSEI",
  src        = "yahoo",
  from       = "2025-04-01",
  to         = Sys.Date(),
  auto.assign= FALSE
)

head(nifty)
tail(nifty)
str(nifty)
str(nifty_ac)

nifty <- na.omit(nifty)
nifty_ac <- na.omit(nifty_ac)

price <- data.frame(nifty$NSEI.Close)
plot(price$NSEI.Close , type = "l")

log_price <- log(price$NSEI.Close)
plot(log_price , type = "l")

library("forecast")
ts_price <- auto.arima(log_price) ; ts_price

plot(ts_price$residuals)

forcast <- forecast(ts_price, 
h = length(seq.Date(from = as.Date("2025-04-01"),to   = Sys.Date(),by   = "day")))
plot(forcast)

time_forcast <- time(forcast$mean)            
actual_y <- as.numeric(log(nifty_ac$NSEI.Close))
time_obs     <- time_forcast[1:length(actual_y)]  
lines(time_obs, actual_y , col  = "red" , lwd  = 2,type = "l")

fc_actual <- exp(data.frame(forcast)) ; fc_actual

# For the current year
fc_actual <- exp(data.frame(forcast))
head(fc_actual)
plot(fc_actual$Point.Forecast, main = "Forecasted NIFTY Price (Original Scale)" , type = "l")
