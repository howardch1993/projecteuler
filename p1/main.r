f1 <- function(n) {
    sum = 0
    for (i in 1:(n - 1)) {
        if ((i %% 3 == 0) | (i %% 5) == 0) sum = sum + i
    }
    sum
}
f1(1000)