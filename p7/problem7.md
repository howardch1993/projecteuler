## [**Problem 7**]("https://projecteuler.net/problem=7")

> By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
What is the 10 001st prime number?

### solve

i use R.

```R
# main func
# determine whether a number is a prime number
is_prime <- function(x) {
  # for number 1
  if (x == 1) return(0)
  # for number 2
  if (x == 2) return(1)
  # for number 3
  if (x == 3) return(1)
  # for other number
  count = 0
  for (i in 2:floor(sqrt(x))) {
    if (x %% i == 0) {
      count = count + 1
    }
  }
  if (count == 0) return(1)
  else return(0)
}
# run
p = 0
s = 10001
n = 1
while (p < s) {
    if (is_prime(n)) p = p + 1
    n = n + 1
}
print(n-1)
```

> answer: 104743

![logo](https://projecteuler.net/profile/howardch1993.png)