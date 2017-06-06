library(stringr)
f1 <- function(x_num,...) {
  x_char = as.character(x_num)
  x_len = str_count(x_char)
  x_new = numeric(x_len)
  for (i in 1:x_len) x_new[i] = as.numeric(str_sub(x_char,i,i))
  sum(x_new)
}
f2 <- function(a,...) {
  if (a == 0) b = 1
  if (a > 0) b = a + f1(a)
  b
}
f3 <- function(init_n = 1,init_num = 1,steps,...) {
    if (init_num >= 1) {
        f = init_num
        while (steps > 0) {
            cat("a",init_n," = ",f,"\n",sep = "")
            f = f2(f)
            init_n = init_n + 1
            steps = steps - 1
        }
        cat("a",init_n," = ",f,"\n",sep = "")
        return(f)
    } else if (init_num < 1) {
        cat("a0 = 1, LOL!\n")
    }
}
options(scipen = 200)
target = 10^15
con <- file("D:/projecteuler/p551/output.txt",open = "wt")
sink(con)
log(f3(t = target))
sink()
