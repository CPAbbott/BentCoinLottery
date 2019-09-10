# 
# Author: Graham Smith
# 
# A simulation of a lottery based on flipping a bent coin 10 times
#
# Currently written with questionable coding practices
#


library(stats)

run_coin_exp <- function(last_flip, tails, heads, p){ #function that runs 100 sets of 10 coin flips
for (j in 1:last_flip){                               #for every time until last flip
  ten_coin_flips <- array(0,10)                       #make 10 flips
  for (i in 1:10){                                    #and for each of those flips
    ten_coin_flips[i] <- if (runif(1) < p) tails else heads  #set a weighted prob for t/h
    }
  print(ten_coin_flips)                               #and then print them
  }
}
run_coin_exp(last_flip = 100, tails = 1, heads = 0, p = 0.1) #our variable parameters