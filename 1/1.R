'''a)Import a CSV file, summarize the file 
and plot any two numeric columns of the file.'''

marks=read.csv("Marks.csv")
plot(marks$Subject1,marks$Subject2)



'''b)Import a CSV file using read.delim() function 
and add a suitable column of suitable name. 
Export this file which was modified as tab delimeted 
without row names to the working directory to R.'''

marks=read.delim("Marks.csv", sep=',')
marks

Percentage <- (marks$Subject1 + marks$Subject2 + marks$Subject3)/3

marks<-cbind(marks,Percentage)
marks

write.table(marks,file="newfile.csv", sep= "\t", row.names=FALSE)




'''c)Factorize the field in any csv file imported to different Levels 
by creating a new factor field and attach to the original File'''


marks=read.csv("Marks.csv")
marks
per<-marks$Percentage
per<-as.factor(per)

marks<-cbind(marks,per)
marks
str(marks)

