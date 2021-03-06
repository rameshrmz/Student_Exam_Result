# Before run the Code check the below Package installed in R Studio
library(tidyverse)

# This step creates data frame for Half Yearly Result
Student_Exam1	<- data.frame(
  Exam 	  = c("Half-yearly","Half-yearly","Half-yearly","Half-yearly","Half-yearly"),
  Subject = c("Tamil","English","Maths","Science","Social"),
  Marks   = c(80,85,99,100,87))

# This step creates data frame for Final Exam Result
Student_Exam2   <- data.frame(
  Exam    = c("Final-Exam","Final-Exam","Final-Exam","Final-Exam","Final-Exam"),
  Subject = c("Tamil","English","Maths","Science","Social"),
  Marks   = c(87,88,94,90,97))

# This step combines Half yearly and Final Exam Result into single dataset in row wise: 
Student_Exam_Stat <- rbind(Student_Exam1,Student_Exam2)

# This graph shows the Half Yearly result
ggplot(data=Student_Exam1)+geom_bar(mapping = aes(x=Subject, y=Marks,fill = Subject),width = 0.5, stat = "identity") + xlab("Subject") + ylab("Marks")
# This graph shows the Final Exam result
ggplot(data=Student_Exam2)+geom_bar(mapping = aes(x=Subject, y=Marks,fill = Subject),width = 0.5, stat = "identity") + xlab("Subject") + ylab("Marks")

# This graph shows the comparision of Half Yerly Result and Final Exam Results
ggplot(Student_Exam_Stat, aes(x=Subject, y=Marks, fill= Exam))+geom_bar(stat="identity", position = "dodge")+ xlab("Subject") + ylab("Marks")

# Display the values while pointing the cursor on the bar. Use "plotly" package to display the values on the bar.
library(plotly)
p <- ggplot(Student_Exam_Stat, aes(x=Subject, y=Marks, fill= Exam))+geom_bar(stat="identity", position = "dodge")+ xlab("Subject") + ylab("Marks")
p <- ggplotly(p)

