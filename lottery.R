# 
# Author: Graham Smith
# 
# A simulation of a lottery based on flipping a bent coin 10 times
#
# Currently written with questionable coding practices
#


library(stats)

ten_coin_flips <- array(0,10)
for (i in 1:10){
  ten_coin_flips[i] <- if (runif(1) < 0.1) 1 else 0
}

for (j in 1:100){
  ten_coin_flips <- array(0,10)
  for (i in 1:10){
    ten_coin_flips[i] <- if (runif(1) < 0.1) 1 else 0
  }
  print(ten_coin_flips)
}
