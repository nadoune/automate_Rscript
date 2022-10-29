library(gtrendsR)

x<- gtrendsR::gtrends("Recession", onlyInterest = TRUE, geo = "CA-ON")

data1 <-data.frame(x$interest_over_time)

save(data1, 
     file = paste0("data/Recession_trends_", make.names(Sys.time()), ".Rda"))
