# Septerber 24, 2022
# Ahmad Zaheen Tahiri
# Dr. Asadullah Jawid
# Assignment: FDT
# ITC 255 - Section 1

# -------------------Descriptive Methods ------------------------#

#-----------------------Instruction------------------------------#

# 1. Upload the dataset iris from the web 
# 2. Choose a numerical variable  and construct its FDT

#    Make sure to add your R script to the repository which is shared with me. 
#    Note: no direct submission needed. 


#--------------------------Solution-------------------------------#

# ANSWER 1: We take the URL of IRIS from the website and use the fucntion of read.csv to open it in R. 
fdtz=read.csv("https://raw.githubusercontent.com/ajawid158/statDataAnalysis/main/iris.csv")
head(fdtz)

# ANSWER 2: I am going to choose SIZE as my numerical variable. 
# > Step 1: Finding Absolute Frequency 
AbsFreqz=table(fdtz$size)
AbsFreqz

# > Step 2: Finding Relative Frequency 
RelFreqz=prop.table(AbsFreqz)
RelFreqz

#Round off the optimal numbers
RelFreqz=round(prop.table(AbsFreqz),2)
RelFreqz

# > Step 3: Finding Cumulative Frequency 
CumFreqz=cumsum(RelFreqz)
CumFreqz

# > Step 4: Putting all frequencies into one. 
fdtSize=cbind(AbsFreqz, RelFreqz, CumFreqz)
fdtSize

# > Step 5: Creating a Function 
fdtAZ=function(x){
  AbsFreqz=table(x)
  RelFreqz=round(prop.table(AbsFreqz),2)
  CumFreqz=cumsum(RelFreqz)
  fdtaz=cbind(AbsFreqz, RelFreqz, CumFreqz)
  return(fdtaz)
}

# > Step 5: Testing the Function
fdtAZ(fdtz$sex)
fdtAZ(fdtz$tip)
fdtAZ(fdtz$smoker)
fdtAZ(fdtz$size)
fdtAZ((fdtz$day))
