xtrain <- read.table('train/X_train.txt')
xtest <- read.table('test/X_test.txt')

ytrain <- read.table('train/Y_train.txt')
ytest <- read.table('test/Y_test.txt')


subject_test <- read.table('test/subject_test.txt')
subject_train <- read.table('train/subject_train.txt')

body_acc_x_test<- read.table('test/Inertial Signals/body_acc_x_test.txt')
body_acc_x_train <- read.table('train/Inertial Signals/body_acc_x_train.txt')

activity_labels <- read.table('activity_labels.txt')

library("dplyr")
library("tidyr")

xtest$subject <- ytest$V1
xtrain$subject <- ytrain$V1

tData <- bind_rows(xtest,xtrain)