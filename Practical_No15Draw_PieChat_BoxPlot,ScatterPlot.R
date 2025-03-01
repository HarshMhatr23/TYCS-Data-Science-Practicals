"Simple Pie Chart"
slices <-c(50,10,10,30)
label<-c("INDIA","USA","UAE","FRANCE")
pie(slices,labels = label,main="Pie Chart of Countries")
"2"
"Pie Chart with Percentages"
slices<-c(50,10,10,30)
label<-c("INDIA","USA","UAE","FRANCE")
pct<-round(slices/sum(slices)*100)
label <-paste(label,pct)
label <-paste(label,"%",sep="")
pie(slices,labels=label,col=rainbow(length(label)),main="Pie Chart of Countries")
"3"
boxplot(mpg~cyl,data=mtcars,main="car Milage Data",xlab="Number of Cylinders",ylab = "Milage per Gallon")
"4"
attach(mtcars)
plot(wt,mpg,main="Scatterplot Example",xlab="Car Weight", ylab="Milage per Gallon",pch = 19)
