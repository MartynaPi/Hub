#1
a <- c(1:5)
b <- c(11:15)
c <- c(21:25)

m <- cbind(a, b, c)

print(m)
class(m)

#2

Name <- c("Jonn", "Tom", "Andy", "Ross", "James")
Age <- c(47,51,49,55,60)
Role <- c("CEO", "Manager", "Designer", "Developer", "QA")
Length_of_service <- c(10, 12, 8, 11, 4)

employeesData <- data.frame(row.names = Name, Age, Role, Length_of_service)
print(employeesData)

#3

install.packages("ggplot2",dependencies = TRUE )
library("ggplot2")

Cities <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
Total <- c(2,4,6,8,10,12,14,16,18,20,22,26,28,30,32,34,36,38,40)
citiesData <- data.frame(row.names = Cities, Total)
citiesData
ggplot(data = citiesData,
       mapping = aes(x = Total,
                     y = Cities))+
  geom_point()
title(xlab= "Total", col.lab=rgb(0,0.5,0))
title(ylab= "Cities", col.lab=rgb(0,0.5,0))

#4
values <- c(1, 10, 7, 3, 8)
group <- c("Rome", "Paris", "London", "Vilnius", "Madrid")
barplot(values,
        names.arg = group)
title(xlab= "Cities", col.lab=rgb(0,0.5,0))
title(ylab= "Total", col.lab=rgb(0,0.5,0))
#5
var1 = readline(prompt = "Enter your name : ");
var2 = readline(prompt = "Enter your age : ");

print(var1)
print(var2)

#6 

print(seq(20,50))
print(mean(20:50))
print(sum(20:50))

#7
