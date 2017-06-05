## Summation of primes

Problem 10

### Description
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
Find the sum of all the primes below 2 million.

### Solution

```r
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

# function to the sum of all the primes between a and b
sum_prime <- function(a,b) {
    sum = 0
    for (j in round(a):floor(b)) {
        if (is_prime(j) == 1) sum = sum + j
    }
    sum
}

# result
options(scipen=200) # adjust digits displayed
a=1
b=100000
num_sheet = numeric(200)
i = 1
while (b < 2000001) {
  num_sheet[i] = sum_prime(a,b)
  cat(a,b,num_sheet[i],"\n",sep = "\t")
  a = b
  b = b + 100000
  i = i + 1
}
sum(num_sheet)
```

> Result : 142913828922

Congratulations, the answer you gave to problem 10 is correct.
You are the 239321st person to have solved this problem.
Return to [Problems]("https://projecteuler.net/problems") page.

![you are right](https://projecteuler.net/images/answer_correct.png)