# normal stimulation
d <- rnorm(10000, mean = 3, sd = 2)
n <- 50
mat <- matrix(ncol = 1000)

for(i in 1:1000) {mat[,i] <- mean(sample(d, size = n))}

hist(mat, density=35, breaks=20, prob=TRUE,
        xlab="Means of 1000",
        ylab="Frequency",
           main="Probability Density from 1000 Simulation",
           col="blue")
lines(density(mat), col = 'brown', lwd = '3')


#Positive skewed
x <- rnbinom(10000, 10, .5)
hist(x, 
     xlim=c(min(x),max(x)), probability=T, nclass=max(x)-min(x)+1, 
     col='lightblue', xlab=' ', ylab=' ', axes=F,
     main='Positive Skewed')
lines(density(x,bw=1), col='red', lwd=3)

