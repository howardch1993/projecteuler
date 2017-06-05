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
f3 <- function(n = 0,an = 0,t,...) {
  a = Sys.time()
  if (t == 0) { 
      b = Sys.time()
      print(b - a)
      return(f2(t))
  }
  if (t > 0) {
    while (n < t) {
      cat(n,"\t",{if(n==0) 1 else an},"\n")
      an = f2(an)
      n = n + 1
    }
    cat(n,"\t",an,"\n")
    b = Sys.time()
    print(b - a)
    return(an)
  }
}
options(scipen = 200)
target = 10^15
con <- file("D:/projecteuler/p551/output.txt",open = "wt")
sink(con)
log(f3(t = target))
sink()
