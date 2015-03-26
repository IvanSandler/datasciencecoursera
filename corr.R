corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
    
    # file path
    data <- paste(c(getwd(),"/", directory), collapse = "")
    
    # read files 
    files <- list.files(data, full.names = TRUE)
    
    # subset of files
    files <- files[id]  
    
    # combine rows of subset files ; 
    df <- do.call(rbind, lapply(files, read.csv))

}
