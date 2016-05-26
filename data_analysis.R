library(ggmap)
library(mapproj)
library(ggplot2)
#read the csv file
da <- read.csv("sep.csv")
#split the colomn of data to retrieve the longitude and latitude data
lon.deg <- sapply(strsplit(as.character(da),","),as.numeric)
#split the date data
dat.date<- sapply((strsplit(as.character(da$Dat), "/")), as.numeric)
#transform the list into a matrix
dat.date<-matrix(dat.date)
#transform the data of longitude and latitude into data frame
lon.deg<-as.data.frame(lon.deg)
#find the longitude data
lona <- lon.deg[,11]
#find the latitude data
lata <- lon.deg[,12]
#declare some variable the following used
temp<-0
arr<-matrix(0,1,22785,byrow = TRUE)
hist<-matrix(0,1,12,byrow=TRUE)
ind<-0
#to seperate the year month and date from the initial data
#and counting the number of cases by month
for(i in 1:22785){
  mon<-split(dat.date[[i]],1:3)
  index<-mon[2]
  ind<-index[[1]]
  ind
  arr[i] <- index
  temp<-hist[ind]
  temp<-temp+ 1
  hist[ind] <-temp

}
#remove and release some variable memory and redeclare some variable
rm(i)
gc(i)
rm(temp)
gc(temp)
rm(ind)
gc(ind)
lat<-matrix(NA,12,22785)
lon<-matrix(NA,12,22785)
counter<-matrix(0,1,12)
temp<-0
ind<-0
#make each longitude and latitude of data mapping to time
for(i in 1:22785){

  temp<-arr[[i]]
  counter[temp]<-counter[temp]+1
  ind<-counter[temp]
  lat[temp,ind]<-lata[i]
  lon[temp,ind]<-lona[i]
}
#new some data in order to let the shiny server can use
l1<-lon[1,]
l2<-lon[2,]
l3<-lon[3,]
l4<-lon[4,]
l5<-lon[5,]
l6<-lon[6,]
l7<-lon[7,]
l8<-lon[8,]
l9<-lon[9,]
l10<-lon[10,]
l11<-lon[11,]
l12<-lon[12,]


la1<-lat[1,]
la2<-lat[2,]
la3<-lat[3,]
la4<-lat[4,]
la5<-lat[5,]
la6<-lat[6,]
la7<-lat[7,]
la8<-lat[8,]
la9<-lat[9,]
la10<-lat[10,]
la11<-lat[11,]
la12<-lat[12,]
#plot the histogram of relation of Dengue ferver patients number and Month 
mm<-barplot(hist[],main = "Dengue Disease sufferer", ylab="Number of patient",xlab="Month")
axis(1,at = mm,1:12)

