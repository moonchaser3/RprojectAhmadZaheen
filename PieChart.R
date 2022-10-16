# October 16, 2022
# Ahmad Zaheen Tahiri
# Dr. Asadullah Jawid
# Assignment: Pie Chart
# ITC 255 - Section 1

# --------------->             GGPlot        <-------------------#

#------------------>       Instruction       <----------------------#

# create a pie chart of one of your QL variables (if you do not have a QL var in your dataset, 
# create one out of a ANT var). Add the R script file of your pie chart to the project you have shared with me. 


#------------------>       Solution       <----------------------#


install.packages("ggplot2")
View(gpa1)

azBusiness=table(azGPA$business)
azBusiness
azBusiness= as.data.frame(azBusiness)
azBusiness
colnames(azBusiness)=c("Answers", "Count")
azBusiness


g1=ggplot(azBusiness, aes(x="", y=Count, fill=Answers))
g2=g1+geom_col()+
  coord_polar(theta = "y")+
  theme_void()+
  theme(plot.title = element_text(colour = "Red", size = 15,
                                  face = "bold" , hjust = .8))+
  ggtitle('Students Enrollment in Business Dept')+
  geom_text(aes(label=Count),
            position = position_stack(vjust = 0.4))+
  scale_fill_manual(values = c("gray", "orange"),
                    labels=c("No","Yes"))+
  theme(legend.position = "bottom")+
  labs(caption = "Source: Wooldridge Dataset - GPA1,
                  Created by: Ahmad Zaheen Tahiri")
ggsave("BusStudents.png")
g2
  
