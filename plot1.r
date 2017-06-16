#1
totEmissions <- aggregate(Emissions ~ year,NEI, sum)
barplot(
  totEmissions$Emissions,
  names.arg=totEmissions$year,
  xlab="Year",
  ylab="PM2.5 Emissions",
  col= "red",
  main="Total PM2.5 Emissions in U.S"
)
dev.copy(png, file="plot1.png", width=800, height=600)
dev.off()  
