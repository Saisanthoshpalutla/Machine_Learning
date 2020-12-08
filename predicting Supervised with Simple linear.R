Data<-read.csv("C:/Users/santu/Downloads/student_scores - student_scores.csv",header = TRUE)
Data
str(Data)
cor(Data$Hours,Data$Scores)
#####Predicting the percentage of an student based on the number of study hours
model<-lm(Scores~ Hours,data = Data)
### Hours - Dependent (x), Independent Scores (y)
summary(model)
a=data.frame(Hours=9.25) 
result=predict(model,a)
result
