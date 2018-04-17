pollutantmean <- function(directory, pollutant, id = 1:332){
  file <- list.files(path = directory, pattern = ".csv", full.names =TRUE)
  values <- numeric()
  
  
  for(i in id){
  
      data <- read.csv(file[i])
    values <- c(values, data[[pollutant]])
  }
  
  mean(values, na.rm = TRUE)
  
}

pollutantmean("E:/R/specdata/specdata", "nitrate")


