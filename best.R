best<- function(state, outcome){
  mydir<- "C:/Users/innarao/Documents/Coursera"
  setwd(mydir)
  df<- read.csv("outcome-of-care-measures.csv")
  if(!any(state == df["State"])){stop("invalid state")}
  
    state_df<- subset(df, df["State"] == state)
    if (outcome=="heart attack"){
    state_df<- subset(state_df,state_df[,11]!= 'Not Available')
    state_df[,11] <- sapply(state_df[,11], function(x) if(is.factor(x)) {
      as.numeric(as.character(x))
    } else {
      x
    })
    mort_vect<- state_df[order(state_df[,11],state_df[,2]),]
    }
    else if (outcome=="heart failure")
        {
        state_df<- subset(state_df,state_df[,17]!= 'Not Available')
        state_df[,17] <- sapply(state_df[,17], function(x) if(is.factor(x)) {
          as.numeric(as.character(x))
        } else {
          x
        })
        mort_vect<- state_df[order(state_df[,17],state_df[,2]),]
        }
        else if (outcome=="pneumonia")
            {
            state_df<- subset(state_df,state_df[,23]!= 'Not Available')
            state_df[,23] <- sapply(state_df[,23], function(x) if(is.factor(x)) {
              as.numeric(as.character(x))
            } else {
              x
            })
            mort_vect<- state_df[order(state_df[,23],state_df[,2]),]
            }
            else stop("invalid outcome")
         
    best_hosp<- mort_vect[1,2]
    as.character(best_hosp[1])
    
}