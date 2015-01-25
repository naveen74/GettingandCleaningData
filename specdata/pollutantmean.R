pollutantmean <- function(directory, pollutant, id=1:332)
{
  dir<- "C:/Users/innarao/Documents/Coursera"
  mydir<- paste(dir,"/",directory,sep="")
  setwd(mydir)
  #setwd("C:/Users/innarao/Documents/Coursera/specdata")
  filenames <- list.files(mydir)
  c<- id
  x <- length (c)
  pmean<- c()
  if (x==1)
  {
    dat <- read.csv(filenames[id], header=T)    
    pollutantmean <- mean(dat[[pollutant]], na.rm= TRUE)
  }
  else
  {
    #a<- 1
    for (i in id)
    {
    da<- read.csv(filenames[i], header=T)
    #print(filenames[i])
    
    #print(bad)
    y <- (da[[pollutant]])
    bad<- is.na(y)
    #print(y)
    mean_dat<-y[!bad]
    #print(mean_dat)
    pmean<- c(pmean,mean_dat)
    #a<- a+1    
    
    }
  pollutantmean<- mean(pmean)
  }
  pollutantmean
}