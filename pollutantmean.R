pollutantmean <- function(directory, pollutant, id = 1:332) {
  +     ## 'directory' is a character vector of length 1 indicating
    +     ## the location of the CSV files
    +     
    +     ## 'pollutant' is a character vector of length 1 indicating
    +     ## the name of the pollutant for which we will calculate the
    +     ## mean; either "sulfate" or "nitrate".
    +     
    +     ## 'id' is an integer vector indicating the monitor ID numbers
    +     ## to be used
    +     
    +     ## Return the mean of the pollutant across all monitors list
    +     ## in the 'id' vector (ignoring NA values)
    +

  # file path
  data <- paste(c(getwd(),"/", directory), collapse = "")
  
  # read files 
  files <- list.files(data, full.names = TRUE)
  
  # subset of files
  files <- files[id]
  
  # combine rows of subset files ; 
  df <- do.call(rbind, lapply(files, read.csv))
  
  # dataSubset <- lapply(files, read.csv)
  # df <- rbind(dataSubset)
  
  #find mean of pollutant 
  mean(df[, "pollutant"], na.rm = T)
  
  # nrow
  # masterFile <- read.csv(files2, header = T)
  
  # masterFile <- do.call("rbind", lapply(read.csv(files2, header = TRUE)))
  
  # mean(masterFile[, pollutant], na.rm = T)
  
  # mean of pollutant 
  # pollutant_data <- read.csv(files2, header =T)
  # mean(rbind(pollutant_data)[,pollutant], na.rm = T) 

}
