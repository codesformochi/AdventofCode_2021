#libraries
library(stringr)

#PART 1
#example
directions <- c(199, 200, 208, 210, 200, 207, 240, 269, 260, 263)

all_elements <- 1:length(directions)

#function to determine whether increasing or decreasing
fu <- function(x, position){
  dataset <- x
  print(position)
  #if not the first element...
  if(position != 1){
    #compare whether the element is > the last
    print(dataset[position] > dataset[position-1])

  #else then NA
  }else{
    "NA"
  }
} #fu end

results <- lapply(all_elements, FUN = fu, x = directions)

sum(results == "TRUE")

#Read in csv file
directions <- read.csv("AOC2021_1.txt", header = FALSE)
directions

all_elements <- 1:nrow(directions)
results <- mapply(all_elements, FUN = fu, x = directions)

sum(results == "TRUE")


#PART 2
