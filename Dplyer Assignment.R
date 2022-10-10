install.packages("wooldridge")
install.packages("dplyr")
library("wooldridge")
library("dplyr")

View(gpa1)
str(gpa1)
head(gpa1)

azGPA=read.csv("https://raw.githubusercontent.com/moonchaser3/RprojectAhmadZaheen/main/gpa1.csv")
head(azGPA)
View(azGPA)

# Applying filter on 2 qual
fGender=filter(azGPA, male=="1", soph=="0")
head(fGender)
View(fGender)

# Applying 1 quantative and 1 qualitative 
GPAjun=filter(azGPA, colGPA>=2.0 , junior==1)
head(GPAjun)
View(GPAjun)

# Applying 2 quantative variables 
GPAage=filter(azGPA, age<20 | colGPA<=3.0)
View(GPAage)
head(GPAage)

# Joining the GPAage with senior level students 
GPAageSenior=filter(azGPA, (age<20 | colGPA<=3.0) & senior=="1")
GPAageSenior

#Using %in% function 
filter(azGPA, colGPA %in% c(2,3))
filter(azGPA, male %in% c(1,0))

# Applying Dplyer in Numerical data
filter(azGPA, age>=20)
filter(azGPA, colGPA<3.0)
filter(azGPA, ACT==23)

# Arranging the dataset
arrange(azGPA, desc(age))
arrange(azGPA, male)

# Selecting variables 
select(azGPA, c(age, male, soph))
select(azGPA, soph:senior5)

# Renaming the dataset
names(azGPA)
az1=rename(azGPA, SOPHMORE=soph)     
View(az1)

# Summarize 
summarize(azGPA, mean(age), mean(colGPA))
gender=group_by(azGPA, male)
summarize(gender, mean(age), mean(colGPA))


# Pull a column as a vector 
Business=pull(azGPA, male)
Business

# Sample_n
dim(azGPA)
sampleaz=sample_n(azGPA, 20)
head(sampleaz)
summary(sampleaz)
