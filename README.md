# Student_Exam_Result
Student Exam Result and its comparision

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
ggplot(data=Exam_1)+geom_bar(mapping = aes(x=Exam_1$Subject, y=Exam_1$Marks,fill = Exam_1$Subject),width = 0.5, stat = "identity")

# This graph shows the Final Exam result
ggplot(data=Exam_2)+geom_bar(mapping = aes(x=Exam_2$Subject, y=Exam_2$Marks,fill = Exam_2$Subject),width = 0.5, stat = "identity")

# This graph shows the comparision of Half Yerly Result and Final Exam Results
ggplot(Student_Exam_Stat, aes(x=Student_Exam_Stat$Subject, y=Student_Exam_Stat$Marks, fill= Student_Exam_Stat$Exam))+geom_bar(stat="identity", position = "dodge")+ xlab("Subject") + ylab("Marks")
