rankall<- function(outcome, num="best"){
  mydir<- "C:/Users/innarao/Documents/Coursera"
  setwd(mydir)
  df<- read.csv("outcome-of-care-measures.csv")
  m_vect<- vector()
  s<- vector()
 
  state_df<- data.frame()
  
  best_hosp<- data.frame(hospital ="NA", state="NA")
  
  
  if (outcome=="heart attack"){
    state_df<- split(df, df["State"])
    
    for (i in 1:54){
    state_df[[i]]<- subset(state_df[[i]],state_df[[i]][,11]!= 'Not Available')
    state_df[[i]][,11] <- sapply(state_df[[i]][,11], function(x) if(is.factor(x)) {
      as.numeric(as.character(x))
    } else {
      x
    }
    )
    max_hosp<- nrow(state_df[[i]][11])
    state_df[[i]]<- state_df[[i]][order(state_df[[i]][,11],state_df[[i]][,2]),]
    
    if (num!="best"&& num!="worst"){
      num<- as.numeric(num)
    }
    
    if (num=='best'){
      
      s[i]<- as.character(state_df[[i]][1,7])
      m_vect[i]<- as.character(state_df[[i]][1,2])
    }
    else if(num=='worst'){
      s[i]<- as.character(state_df[[i]][1,7])
      m_vect[i]<- as.character(state_df[[i]][max_hosp,2])
    }
    else if(num> max_hosp){
      s[i]<- as.character(state_df[[i]][1,7])
      m_vect[i]<- NA
    } 
    else{
      s[i]<- as.character(state_df[[i]][1,7])
      m_vect[i]<- as.character(state_df[[i]][num,2])
    }
    }
  }
  else if (outcome=="heart failure"){
    state_df<- split(df, df["State"])
    
    for (i in 1:54){
      state_df[[i]]<- subset(state_df[[i]],state_df[[i]][,17]!= 'Not Available')
      state_df[[i]][,17] <- sapply(state_df[[i]][,17], function(x) if(is.factor(x)) {
        as.numeric(as.character(x))
      } else {
        x
      }
      )
      max_hosp<- nrow(state_df[[i]][17])
      state_df[[i]]<- state_df[[i]][order(state_df[[i]][,17],state_df[[i]][,2]),]
      
      if (num!="best"&& num!="worst"){
        num<- as.numeric(num)
      }
      
      if (num=='best'){
        
        s[i]<- as.character(state_df[[i]][1,7])
        m_vect[i]<- as.character(state_df[[i]][1,2])
      }
      else if(num=='worst'){
        s[i]<- as.character(state_df[[i]][1,7])
        m_vect[i]<- as.character(state_df[[i]][max_hosp,2])
      }
      else if(num> max_hosp){
        s[i]<- as.character(state_df[[i]][1,7])
        m_vect[i]<- NA
      } 
      else{
        s[i]<- as.character(state_df[[i]][1,7])
        m_vect[i]<- as.character(state_df[[i]][num,2])
      }
    }   
      
  }
  else if (outcome=="pneumonia"){
    state_df<- split(df, df["State"])
    
    for (i in 1:54){
      state_df[[i]]<- subset(state_df[[i]],state_df[[i]][,23]!= 'Not Available')
      state_df[[i]][,23] <- sapply(state_df[[i]][,23], function(x) if(is.factor(x)) {
        as.numeric(as.character(x))
      } else {
        x
      }
      )
      max_hosp<- nrow(state_df[[i]][23])
      state_df[[i]]<- state_df[[i]][order(state_df[[i]][,23],state_df[[i]][,2]),]
      
      if (num!="best"&& num!="worst"){
        num<- as.numeric(num)
      }
      
      if (num=='best'){
        
        s[i]<- as.character(state_df[[i]][1,7])
        m_vect[i]<- as.character(state_df[[i]][1,2])
      }
      else if(num=='worst'){
        s[i]<- as.character(state_df[[i]][1,7])
        m_vect[i]<- as.character(state_df[[i]][max_hosp,2])
      }
      else if(num> max_hosp){
        s[i]<- as.character(state_df[[i]][1,7])
        m_vect[i]<- NA
      } 
      else{
        s[i]<- as.character(state_df[[i]][1,7])
        m_vect[i]<- as.character(state_df[[i]][num,2])
      }
    }  
      
  }
  else stop("invalid outcome")
  
    
    
  best_hosp<- data.frame(hospital=m_vect,state=s)
  
  best_hosp
 }