# Septerber 25, 2022
# Ahmad Zaheen Tahiri
# Dr. Asadullah Jawid
# Assignment: FDT
# ITC 255 - Section 1

# --------------->    Descriptive Methods    <-------------------#
# --------------->        Univar Case        <-------------------#
# --------------->          FDT              <-------------------#
# --------------->    Numerical Variables    <-------------------#

#------------------>       Instruction       <----------------------#

# 1. Upload the dataset iris from the web 
# 2. Choose a numerical variable  and construct its FDT

#    Make sure to add your R script to the repository which is shared with me. 
#    Note: no direct submission needed. 


#------------------>       Solution       <----------------------#

# ANSWER 1: We take the URL of IRIS from the website and use the fucntion of read.csv to open it in R. 
fdtz=read.csv("https://gist.githubusercontent.com/netj/8836201/raw/6f9306ad21398ea43cba4f7d537619d0e07d5ae3/iris.csv")
head(fdtz)
View(fdtz)

# ANSWER 2: I am going to choose sepal.width as my numerical variable. 
summary(fdtz$sepal.width)

#Defining Categorize 
#Small when sepal.width<2, medium when sepal.width>=3 but less than 3.5, when sepal.width is large. 

#Selection
CatSepalWidth=c()

for(az in 1:length(fdtz$sepal.width) ) {
  if(fdtz$sepal.width[az]<=2){
   CatSepalWidth[az]="Small"
  }else if(fdtz$sepal.width[az]>3 &  fdtz$sepal.width[az]<=3.5){
    CatSepalWidth[az]="medium "
  }else {
    CatSepalWidth[az]="large"
  }
}

head(CatSepalWidth)

# Now we are combining the variable with numbers
SepalAmount = cbind(fdtz$sepal.width,CatSepalWidth)
View(SepalAmount)

# Calling the FDT Function / Constructing FDT for IRIS of Sepal.Width
fdtAZ(CatSepalWidth)


----------------------------------------------------------------------------------------------------
