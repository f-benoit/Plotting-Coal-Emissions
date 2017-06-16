#5
vehicleRow<- grep("Vehicle", SCC$EI.Sector, ignore.case = TRUE)
vehicleRelated<-SCC[vehicleRow,"SCC"]
emFromBaltVehicles<-NEI[NEI$SCC %in% vehicleRelated & NEI$fips=="24510",]
totEmBaltVehicles <- aggregate(Emissions ~ year ,emFromBaltVehicles, sum)

ggplot(data=totEmBaltVehicles,
       aes(x=year, y=Emissions)) +
  geom_line(size=1) + 
  geom_point(size=3) +
  ggtitle("Total Vehicles Emissions by Year") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("plot5.png")  
