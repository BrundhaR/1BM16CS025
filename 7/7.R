library(e1071)


age <- c('youth','youth','middle_aged','senior','senior','senior','middle_aged','youth','youth','senior','youth','middle_aged','middle_aged','senior')
income <- c('high','high','high','medium','low','low','low','medium','low','medium','medium','medium','high','medium')
student <- c('no','no','no','no','yes','yes','yes','no', 'yes','yes','yes','no','yes','no')
credit_rating <- c('fair','excellent','fair','fair','fair','excellent','excellent','fair','fair','fair','excellent','excellent','fair','excellent')
buys_computer <- c('no','no','yes','yes','yes','no','yes','no','yes','yes','yes','yes','yes','no')

mydata <- cbind(age,income,student,credit_rating,buys_computer)
mydata <- as.data.frame(mydata)
mydata

testset <- c(age='middle_aged',income='high',student='yes',credit_rating='excellent',buys_computer='')

dataset <- rbind(mydata,testset)
dataset

traindata <- as.data.frame(dataset[1:14,])
testdata <- as.data.frame(dataset[15,])

bayesmodel <- naiveBayes(buys_computer ~ age + income + student + credit_rating, traindata)
bayesmodel
result <- predict(bayesmodel, testdata)
result

