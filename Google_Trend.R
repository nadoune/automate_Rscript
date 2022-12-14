library(gtrendsR)

recession <- gtrendsR::gtrends("Recession", onlyInterest = TRUE, geo = "CA")
recession1 <-data.frame(recession$interest_over_time)


inflation <- gtrendsR::gtrends("Inflation", onlyInterest = TRUE, geo = "CA")
inflation1 <-data.frame(inflation$interest_over_time)


supplyChain <- gtrendsR::gtrends("Supply chain", onlyInterest = TRUE, geo = "CA")
supplyChain1 <-data.frame(supplyChain$interest_over_time)


#write.csv(recession1,   file = paste0("data/Recession_trends_"  , make.names(Sys.time()), ".csv"),row.names = F)
#write.csv(inflation1,   file = paste0("data/Inflation_trends_"  , make.names(Sys.time()), ".csv"),row.names = F)
#write.csv(supplyChain1, file = paste0("data/supplyChain_trends_", make.names(Sys.time()), ".csv"),row.names = F)

write.csv(recession1, file   = paste0("data/Recession_trends.csv")  , row.names = F)
write.csv(inflation1, file   = paste0("data/Inflation_trends.csv")  , row.names = F)
write.csv(supplyChain1, file = paste0("data/SupplyChain_trends.csv"), row.names = F)

