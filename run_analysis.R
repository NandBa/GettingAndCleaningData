library(plyr)
library(dplyr)



#Step 1 
#Combines the training and the test sets to create one data set
train<-read.table("train/X_train.txt",stringsAsFactors = FALSE)
test<-read.table("test/X_test.txt",stringsAsFactors = FALSE)
x<-rbind(train,test)

#Step 2
#Extracts only the measurements on the mean and standard deviation for each measurement
features<-read.table("features.txt",stringsAsFactors = FALSE)
features<-select(features,-V1,V2)
features<-as.data.frame(t(features))
features<-sapply(features,as.character)
names(x)<-c(features)
x<-x[,grep("std()|mean()",names(x),value=TRUE)]

#Step 3
#Uses descriptive activity names to name the activities in the data set
trainL<-read.table("train/y_train.txt",stringsAsFactors = FALSE)
testL<-read.table("test/y_test.txt",stringsAsFactors = FALSE)
y<-rbind(trainL,testL)
y$V1<- as.character(y$V1)
y$V1<-revalue(y$V1,c("1"="Walking","2"="Walking Upstairs","3"="Walking Downstairs","4"="Sitting","5"="Standing","6"="Laying"))

#Step 4
#Appropriately labels the data set with descriptive variable names
names(y)<-c("Activities")
names(x)<-gsub("[[:punct:]]", " ", names(x))
names(x)<-sub("mean","Mean",names(x))
names(x)<-sub("std","STD",names(x))
names(x)<-sub("f","Freq",names(x))
names(x)<-sub("t","Time",names(x))

testS<-read.table("test/subject_test.txt",stringsAsFactors = FALSE)
trainS<-read.table("train/subject_train.txt",stringsAsFactors = FALSE)
w<-rbind(trainS,testS)
names(w)<-c("Subject")

#Step 5
# An independent tidy data set with the average of each variable for each activity and each subject
final<-cbind(w,y,x)
final<-group_by(final,Subject,Activities)
final<-summarise_each(final,funs(mean))
write.table(final,file="tidydata.txt",row.names = FALSE)
