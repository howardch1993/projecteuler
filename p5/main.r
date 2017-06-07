# main func
f1 <- function(x,n,...) {
    n_vector = numeric(n)
    for (i in 1:n) {
        n_vector[i] = x %% i
    }
    if (sum(n_vector) == 0) return(1)
    else return(0)
}

# test for 10
f1(2520,10)

# run
num = 20
while (num > 0) {
    if (num %% 20 != 0) num = num + 20
    else {
        if (f1(num, 20)) break
        else num = num + 20
    }
}
print(num)

# result: 232792560