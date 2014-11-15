data   <- data.frame(sex = c(rep("M", 50),rep("F", 50)), x1 = rnorm(100, 34, 1), x2 = rnorm(100, 20, 1)) 

dummy  <- ifelse(data$sex == "M", 1, 0)

data$y <- rnorm(100, data$x1*2 + dummy*5 + data$x2*5.5, 1)

mod    <- lm(y ~ sex + x1 + x2, data = data)

