
totEmBaltimore <- aggregate(Emissions ~ year + type,NEI[NEI$fips=="24510",], sum)
ggplot(data=totEmBaltimore,
       aes(x=year, y=Emissions, colour=type)) +
  geom_line(size=1) + 
   geom_point(size=3) +
  ggtitle("Total PM2.5 Emissions by Year and Type in Baltimore") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5))
  ggsave("plot3.png")  


ggplot(totEmBaltimore,aes(factor(year),Emissions,fill=type)) +
  geom_bar(stat="identity") +
  facet_grid(.~type) + 
  labs(x="Year", y="Total Emission") + 
  labs(title=expression("Total PM2.5 Emissions by Year and Type in Baltimore"))+
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5))
ggsave("plot3_otherversion.png")  
