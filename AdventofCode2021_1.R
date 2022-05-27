#libraries
library(rtricks)
library(dplyr)

#PART 1
#' @example
#' ex_directions <- c(199, 200, 208, 210, 200, 207, 240, 269, 260, 263)
#' all_elements <- 1:length(ex_directions)
#' results <- lapply(all_elements, FUN = compare_x_to_xminusone, x = ex_directions)

#Read in csv file
directions <- read.csv("AOC2021_1.txt", header = FALSE)

#get all num of elements/directions
all_elements <- 1:nrow(directions)

#compare each element to the one before and determine whether increasing
results <- mapply(all_elements, FUN = compare_x_to_xminusone, x = directions)

#find all that are increasing
sum(results == "TRUE")

print(compare_x_to_xminusone)


#PART 2
#' @example
#' ex_directions <- c(199, 200, 208, 210, 200, 207, 240, 269, 260, 263)
#' dir_length <- 1:length(ex_directions)
#' test_sums <- c()
#' for(i in dir_length){
#' if(i <= max(dir_length) - 2){
#' test_sums[i] <- ex_directions[i] + ex_directions[i+1] + ex_directions[i+2]
#' }else{
#' print(paste("Skipped position", i))
#' }
#' }
#' results <- lapply(all_elements, FUN = compare_x_to_xminusone, x = test_sums)
#' test_sums
#' sum(results == "TRUE")
#' expected <- data.frame(x = c(607, 618, 618, 617, 647, 716, 769, 792),
#'                        y = c("NA", "increased", "no change", "decreased", "increased", "increased", "increased", "increased"))
#' expected

#get sums from directions
sums_vector <- c()

directions <- directions$V1

for(i in all_elements){
  if(i <= max(all_elements) - 2){
    sums_vector[i] <- directions[i] + directions[i+1] + directions[i+2]
  }else{
    print(paste("Skipped position", i))
  }
}

#compare each element to the one before and determine whether increasing
results <- lapply(all_elements, FUN = compare_x_to_xminusone, x = sums_vector)

#find all that are increasing
sum(results == "TRUE")


