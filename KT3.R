S<-read.csv("https://raw.githubusercontent.com/junaart/ForStudents/f718f250c1b5c020bb21d00be91d22b9ed2909bd/R_two_days/Lesson_2/data_1.csv",header =TRUE,sep=',')
View(S)
install.packages("rpivotTable")
library(rpivotTable)

colnames(S)<-c("Name","Date of birth","Gender","Emp.date","Wage","Martial status","N of children")
View(S)

#количество мужчин и женщин
rpivotTable::rpivotTable(S,rows = "Gender",vals = "Name",aggregatorName = "Count")

#Сумарное количество детей у мужчин и женщин
rpivotTable::rpivotTable(S,rows = "Gender",vals = "N of children",aggregatorName = "Sum")

#Средний оклад по разбивке по семейному положению
rpivotTable::rpivotTable(S,rows = "Martial status",vals = "Wage",aggregatorName = "Average")
