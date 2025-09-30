#IT24100543 Kulasingha A.I.V.

#  i. Generate a random sample of size 25 for the baking time.
data <- rnorm(25, mean = 45, sd = 2)

# ii. Test whether the average baking time is less than 46 minutes at a 5% level of significance.
t.test(data, mu = 46, alternative = "less")
