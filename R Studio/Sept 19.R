# Septerber 18, 2022
# Lecture 4 
# ITC 255 - Section 1

# ---- Descriptive Methods ----
# >     Univar Case
# >     FDT
# >     Categorical Variables

# Upload the Data
# Dataset Tips

dfTips=read.csv(url('https://raw.githubusercontent.com/mwaskom/seaborn-data/master/tips.csv'))
head(dfTips)

#> FDT for SMOKER
#> Step 1: Absolute Frequency 
absFreq=table(dfTips$smoker)
absFreq

#Step 2: Relative Freq is the Percentage!

RelFreq=prop.table(absFreq)
RelFreq

#To reduce the number of Decimal, we use the below function 
# 1 Round function 
# 2 The number (2) in below code shows the decimal number 
RelFreq=round(prop.table(absFreq), 2)
RelFreq

#Step 3: Now, we are going to find the Cumulative Frequency 
CumFreq=cumsum(RelFreq)
CumFreq

# Step 4: Putting all three frequencies together using the (Cbind) code
fdtSmoker=cbind(absFreq, RelFreq, CumFreq)
fdtSmoker

#Create a function that returns the FDT of a cat Var
fdtCat=function(x){
  absFreq=table(x)
  relFreq=prop.table(absFreq)
  cumFreq=cumsum(relFreq)
  fdtx=cbind(absFreq, RelFreq, CumFreq)
  return(fdtx)
}
#Test the function 
fdtCat(dfTips$sex)

