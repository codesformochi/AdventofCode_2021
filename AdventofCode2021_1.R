#libraries
library(rtricks)

#PART 1
#example
#' directions <- c(199, 200, 208, 210, 200, 207, 240, 269, 260, 263)
#' all_elements <- 1:length(directions)
#' results <- lapply(all_elements, FUN = compare_x_to_xminusone, x = directions)

#Read in csv file
directions <- read.csv("AOC2021_1.txt", header = FALSE)

all_elements <- 1:nrow(directions)
results <- mapply(all_elements, FUN = compare_x_to_xminusone, x = directions)

sum(results == "TRUE")


#PART 2
