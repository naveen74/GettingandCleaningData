corr<- function(directory, n=0)
{
x<-complete("specdata",1:332)
dir<- "C:/Users/innarao/Documents/Coursera"
my_dir<- paste(dir,"/",directory,sep="")
setwd(my_dir)
filenames <- list.files(my_dir)
  
a<- x["nobs"] 
b<- x["id"]
corr_dat<-c(0)
j<-1
for (k in 1:332)
  {
  
    if (a[k,]>= n)
    {
    da<- read.csv(filenames[k], header=T)
    x<- da[complete.cases(da),]
    corr_dat[j]<- cor(x["sulfate"],x["nitrate"])
    j<-j+1    
    }
    
  }
return(corr_dat)
}
