compl<- function(directory, id=1:332){
data1<-data.frame(id=numeric(),nobs=numeric())
cnt<-0
cnt<-id
dir<- "C:/Users/innarao/Documents/Coursera"
#directory<- "specdata"
mydir<- paste(dir,"/",directory,sep="")
setwd(mydir)
filenames<- list.files(mydir)

for (i in cnt)
{
  df<- read.csv(filenames[i], header=T)  
  x<- df[complete.cases(df),]
  #print(x)
  count1<- nrow(x)
  newrow<-data.frame(id=i,nobs=count1)
  print(newrow)
  #data1<-rbind(data1,newrow)
}
#print(data1)
}