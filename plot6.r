#6
emFromBaltLAVehicles<- NEI[NEI$SCC %in% vehicleRelated & NEI$fips %in% c("24510","06037"),]
totEmBaltLAVehicles <- aggregate(Emissions ~ year + fips ,emFromBaltLAVehicles, sum)
totEmBaltLAVehicles <- rename(totEmBaltLAVehicles, c("fips"="City"))
totEmBaltLAVehicles$City <- factor(totEmBaltLAVehicles$City, levels=c( "24510","06037"), labels=c( "Baltimore","Los Angeles"))
ggplot(data=totEmBaltLAVehicles,
       aes(x=year, y=Emissions,col=City)) +
  geom_line(size=1) + 
  geom_point(size=3) +
  ggtitle("Total Vehicles Emissions by Year in Baltiimore & LA") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("plot6.png")  
