#libraries
library(rtricks)
library(dplyr)
library(tidyverse)

#PART 1
#' @example
#' coord_track()

#Read in csv file
directions <- read.csv("AOC2021_2.txt", header = FALSE)

#assign the input into a dataframe and extract the directions and increments
df <- data.frame(directions = directions)
directions_split <- df %>% extract(V1, c("directions", "steps"), regex = "([[:alnum:]]+) ([[:alnum:]])")

#get coordinates
results <- coord_track(directions_split$directions, as.numeric(directions_split$steps))

#get the final position and find the answer
answer <- results[1001,] %>% str_split(pattern = ", ")
answer <- as.numeric(unlist(answer))

abs(answer[1]*answer[2])



