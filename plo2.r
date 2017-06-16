#2
totEmBaltimore <- aggregate(Emissions ~ year,NEI[NEI$fips=="24510",], sum)
barplot(
  totEmBaltimore$Emissions,
  names.arg=totEmBaltimore$year,
  xlab="Year",
  ylab="PM2.5 Emissions",
  col= "red",
  main="Total PM2.5 Emissions in Baltimore"
)
dev.copy(png, file="plot2.png", width=800, height=600)
dev.off()  
