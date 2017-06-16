#Find all coal combustion-related sources
coalRow <- grep("coal", SCC$EI.Sector, ignore.case=TRUE)
coalRelated <-SCC[coalRow,"SCC"]
emFromCoal<-NEI[NEI$SCC %in% coalRelated,]
totEmCoal <- aggregate(Emissions ~ year ,emFromCoal, sum)

ggplot(data=totEmCoal,
       aes(x=year, y=Emissions)) +
  geom_line(size=1) + 
  geom_point(size=3) +
  ggtitle("Total Coal Emissions by Year") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("plot4.png")  
