library(gtrendsR)

x<- gtrendsR::gtrends("Recession", onlyInterest = TRUE, geo = "CA-ON")

data1 <-data.frame(x$interest_over_time)

#write.csv(data1, file = paste0("data/Recession_trends_", make.names(Sys.time()), ".csv"),row.names = F)

write.csv(data1, file = paste0("data/Recession_trends.csv"), row.names = F)

