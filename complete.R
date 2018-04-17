
complete <- function(directory, id = 54){
  filelist <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
  nobs <- numeric()
  
  
  for(i in id){
    data <- read.csv(filelist[i])
    nobs <- c(nobs, sum(complete.cases(data)))
    
  }
    
  nobs
}

complete("E:/R/specdata/specdata")
