# test
# simple print
a=1
b=2*a
print(c(a,b))

# saving session to file
save(a,file="sess1.Rdata")
save(list=ls(all.names = TRUE),file="sess1.Rdata")
save.image()
load(file="sess1.Rdata")

# variable names
b2=7
Manoj_GDPL = "Scientist"
Manoj.GDPL = "Scientist"

# reserved keywords
pi
letters
LETTERS
month.name
month.abb

# data types
typeof(1)
typeof(as.Date("2023-07-16"))

# Vector
X = c(2.3,4.5,6.7,8.9)
print(X)

# List
ID = c(1,2,3,4)
emp.name =c("Man","Rag","Sha","Din")
num.emp = 4

# note that List is not of uniform dimension. It is not a Matrix or table
emp.list = list(ID, emp.name,num.emp)
print(emp.list)

# Give names to each row
emp.list = list("ID"= ID,"Names" = emp.name,"Total staff"=num.emp)

# retrieve a full named row
print(emp.list$Names)

# retrieve based on number
print(emp.list[[1]])
print(emp.list[[2]])
print(emp.list[[1]][1])
print(emp.list[[2]][1])

# update a row and add new column
emp.list["Total staff"]=5
emp.list[[2]][5]="Nir"
emp.list[[1]][5]=5
print(emp.list)

# concatenate two lists
emp.ages = list("ages" = c(23,48,54,30,32))
emp.list= c(emp.list , emp.ages)
print(emp.list)

# rm(list=ls())

# data frames
vec1 = c(1,2,3)
vec2 = c("R","Scilab","Java")
vec3 = c("For prototyping","For prototyping","For Scaleup")
df = data.frame(vec1,vec2,vec3)
print(df)

# populate data frame from a file
setwd("C:/Varaha/Varaha")
newDF = read.table(file="dfdata.dat",",")
print(newDF)

df = rbind(df,data.frame(vec1=4,vec2="C", vec3="For Scaleup"))
print("adding extra row")
print(df)
df = cbind(df,vec4=c(10,20,30,40))
print("adding extra col")
print(df)

df2 = df[-3,-1]
print(df2)
df3 = df[,!names(df) %in% c("vec3")]
print(df3)
df4 = df[!df$vec1==3,]
print(df4)

vec1 = c(1,2,3)
vec2 = c("R","Scilab","Java")
vec3 = c("For prototyping","For prototyping","For Scaleup")
df = data.frame(vec1,vec2,vec3,stringsAsFactors = F)
# Now trying the same manipulation
df[3,3]= "Others"
print(df)

pd=data.frame("Name"=c("Senthil","Senthil","Sam","Sam"),
              "Month"=c("Jan","Feb","Jan","Feb"),
              "BS" = c(141.2,139.3,135.2,160.1),
              "BP" = c(90,78,80,81))
print(pd)

library(reshape2)
library(reshape)
Df=melt(pd,id.vars=c("Name","Month"),measure.vars = c("BS", "BP"))
print(Df)
Df2 = cast(Df, variable+Month ~ Name, value.var="value" )
print(Df2)

library(dplyr)
library(dtplyr)
pd2 <- mutate(pd,log_BP=log(BP))

pd=data.frame("Name"=c("Senthil","Senthil","Sam","Sam"),
              "Month"=c("Jan","Feb","Jan","Feb"),
              "BS" = c(141.2,139.3,135.2,160.1),
              "BP" = c(90,78,80,81))
print(pd)

pd_new=data.frame("Name"=c("Senthil","Ramesh", "Sam"),
"Department"=c("PSE","Data Analytics","PSE"))
print(pd_new)

library(dplyr)
library(dtplyr)
pd_left_join1 <- left_join(pd, pd_new, by ="Name")
print(pd_left_join1)

pd_inner_join1 <- inner_join(pd_new, pd, by ="Name")
print(pd_inner_join1)

pd_right_join1 <- right_join(pd, pd_new, by ="Name")
print(pd_right_join1)

pd_full_join1 <- full_join(pd, pd_new, by ="Name")
print(pd_full_join1)

pd_semi_join1 <- semi_join(pd_new, pd, by ="Name")
print(pd_semi_join1)


n=16
x = seq(1,n,2)
for (i in x) {
  if (i == 5){
    print(i)
    break
  }
}

x =c(1:4) 
y =c(6,3) 
x *y
library( )

x1=matrix(10:18,3,3)
print(x1)
x2=matrix(11:19,3,3)
print(x2)
m =cbind(apply(x1,1,min),apply(x2,1,max))
print(m)

y =apply(m,1,mean)
print(y)

is.numeric("1")
student_data = data.frame("student_id"=c(1:4), "student_name"=c("Ram","Harish","Pradeep","Rajesh"))
print(student_data)

student_data.student_dept= c("Commerce","Biology", "English","Tamil")
student_data["student_dept"]=c("Commerce","Biology", "English","Tamil")
student_dept= student_data[c("Commerce","Biology", "English","Tamil")]

print(student_data[[3]][4])

ls()
ID=c(1,2,3,4)
Patient_name=c("Ram","Shyam","Nandini","Maya")
num.patient=4
patient_list=list(num.patient,ID,Patient_name)
print(patient_list)
for (i in patient_list[1])
{
  for (j in 1:i)
  {print(patient_list[[3]][j])}
}
x=10+5 %% 3
print(x)
print(typeof(x))
library(resha)
A=matrix(c(9:1),3,3)
print(A)
print(A[3,2])
for (i in 1:3)
{for (j in 1:3)
  {print(A[[i]][j])}}
print(A[2])

print(A[3,2])

pd=data.frame("Name"=c("Senthil","Senthil","Sam","Sam"),
              "Month"=c("Jan","Feb","Jan","Feb"),
              "BS" = c(141.2,139.3,135.2,160.1),
              "BP" = c(90,78,80,81))
print(pd)
library(reshape2)
Df=melt(pd,id.vars=c("Name","Month"),measure.vars=c("BS","BP"))
print(Df)
Df2=dcast(Df,variable+Month~Name,value.var="value")
print(Df2)
library(dplyr)
browseVignettes(package="dplyr")

# Week 2
A=matrix(c(9:1),3,3)
print(A)
B=matrix(c(19:11),3,3)
print(B)
C=A / B
print(C)
print(C[[4]])

install.packages(pracma)
library(pracma)
A1=cbind(c(1,0,0,0,0),c(0,5,0,0,0),c(0,0,0,0,0),c(0,0,0,4,0),c(0,0,0,0,2))
print(rank(A1))
A1=matrix(cbind(c(1,0,0,0,0)))
A1=matrix(cbind(c(0,5,0,0,0)))
A2=cbind(c(5,7,-5),c(-3,-5,1),c(7,3,3))
print(A2)
print(Rank(A2))
A3=cbind(c(4,-1,0),c(-2,2,-2),c(0,-1,4))
print(A3)
ev=eigen(A3)
print(ev$values)
A4=cbind(c(-2,4),c(7,-2),c(3,-6))
print(A4)
print(Rank(A4))
print(det(A4))
A5=cbind(c(1,1),c(1,2))
print(Rank(A5))
print(A5)
A6=cbind(c(5,4,-4),c(8,1,-4),c(16,8,-11))
print(A6)
print(Rank(A6))
ev2=eigen(A6)
print(ev2$values)
A7=cbind(c(1,1,0),c(-3,-3,0),c(-2,1,1),c(4,1,-1))
print(A7)
print(Rank(A7))
A8=cbind(c(-1,2,2))
print(A8)
A8T=t(A8)
print(A8T)
A9=A8 %*% A8T
print(A9)
ev9=eigen(A9)
print(ev9)
print(as.character(ev9$values[1]*ev9$values[2]))
A10=cbind(c(1,1,2),c(1,2,4),c(1,-1,-2))
print(Rank(A10))
A11=cbind(c(1,1,2),c(1,2,1),c(1,-1,1),c(-2,1,2))
print(A11)
print(Rank(A11))
A12=cbind(c(1,1,2),c(1,2,1),c(1,-1,1))
print(A12)
print(Rank(A12))
A13=cbind(c(2,1,0),c(-3,1,0),c(6,-2,0))
A14=cbind(c(2,1,0),c(-3,1,0),c(6,-2,0),c(14,-3,0))
print(Rank(A14))
A15=cbind(c(2,1),c(-3,1),c(6,-2))
A16=cbind(c(2,1),c(-3,1),c(6,-2),c(14,-3))
print(Rank(A16))











