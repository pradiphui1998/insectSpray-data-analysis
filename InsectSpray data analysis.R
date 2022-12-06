  ## data set
  attach(InsectSprays)

##(a) for graphics
require(stats); require(graphics)
boxplot(count ~ spray, data = InsectSprays,
        xlab = "Type of spray", ylab = "Insect count",
        main = "InsectSprays data", varwidth = TRUE, col = "lightgray")


##(b)
data1 <- InsectSprays[c(spray=="C" | spray=="D" | spray=="E"),]
model1 <- aov(count ~ spray, data =data1)
summary(model1)


##(c)
data2 <- InsectSprays[c(spray=="A" | spray=="B" | spray=="F"),]
model2 <- aov(count ~ spray, data =data2)
summary(model2)


## (e)
oneway.test(count~spray,data=InsectSprays)


