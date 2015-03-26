complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  
  # file path
    data <- paste(c(getwd(),"/", directory), collapse = "")
  
  # read files 
    files <- list.files(data, full.names = TRUE)
  
  # subset of files
    files <- files[id]  
  
  # combine rows of subset files ; 
    df <- do.call(rbind, lapply(files, read.csv))
  
  # NUmber of complete cases
    nobs <- data.frame(sum(complete.cases(df), na.rm = T)
                       
}
