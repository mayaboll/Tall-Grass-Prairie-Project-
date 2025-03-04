##' Download Phenocam data
##' 
##' @param URL  web address where data is located
download_phenocam <- function(URL) {
  ## check that we've been passed a URL
  if (length(URL) == 1 & is.character(URL) & substr(URL, 1, 4) == "http") {
    
    ## read data
    dat <- read_csv(URL, skip = 22)
    
    ## convert date
    dat$date <- as_date(as.character(dat$date))
    
    return(dat)
  } else {
    print(paste("download.phenocam: Input URL not provided correctly", URL))
  }
}