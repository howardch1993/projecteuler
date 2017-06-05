# p551 # main func

library(stringr)

# 计算数字123各位数字的和,即1+2+3=6
f1 <- function(x_num,...) {
  x_char = as.character(x_num)
  x_len = str_count(x_char)
  x_new = numeric(x_len)
  for (i in 1:x_len) x_new[i] = as.numeric(str_sub(x_char,i,i))
  sum(x_new)
}

# 从a0计算an的数
f2 <- function(a,...) {
  if (a == 0) b = 1
  if (a > 0) b = a + f1(a)
  b
}
# 计算第n位数
f3 <- function(n = 0,an = 0,t,...) {
  if (t == 0) return(f2(t))
  if (t > 0) {
    while (n < t) {
      cat(n,"\t",{if(n==0) 1 else an},"\n")
      an = f2(an)
      n = n + 1
    }
    cat(n,"\t",an,"\n")
    return(an)
  }
}
