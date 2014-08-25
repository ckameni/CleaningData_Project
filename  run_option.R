rect(13,10,20,54)
?plot.new
url<-"https://s3.amazonaws.com/coursera-uploads/user-a2b9520c501df25df2132447/972584/asst-3/881c95f01e7111e4aa1a991cfb0c0062.txt"
a<-read.table(url,sep=",")
head(a)
dim(a)

#read.merge - This block of code creates a data set "data" (STEP 1)
{
  testX<-read.table("./UCI HAR Dataset/test/X_test.txt")
  testY<-read.table("./UCI HAR Dataset/test/Y_test.txt")
  testS<-read.table("./UCI HAR Dataset/test/subject_test.txt")
  test<-cbind(testX,testY,testS)
  
  dim(test)
  trainX<-read.table("./UCI HAR Dataset/train/X_train.txt")
  trainY<-read.table("./UCI HAR Dataset/train/Y_train.txt")
  trainS<-read.table("./UCI HAR Dataset/train/subject_train.txt")
  train<-cbind(trainX,trainY,trainS)
  dim(train)
  
  data<- rbind(test,train);dim(data)
  
  rm(test,testS,testX,testY,train,trainS,trainX,trainY) # Memory Cleanup O.C.D.
}

#assign.colnames - This block of code assigns names to the columns of the dataset
{
  features<-read.table("./UCI HAR Dataset/features.txt")[,2];head(features);length(features)
  features<-as.character(features) # Converting factor to character
  head(features);length(features)
  
  features<-c(features,"activitylabel","subject") # Adding labels 'activitylabel' and 'subject' for data from Y.txt and Subject.txt
  
  tail(features);length(features)
  colnames(data)<-features
}

#data.trim - This block of code retains only the "mean" and "std" measurements (STEP 2)
{
  features<-read.table("./UCI HAR Dataset/features.txt")[,2]
  features<-tolower(features);tail(features)
  meanandstd<-grep("(mean\\(\\))|(std\\(\\))",features)
  
  trimmed.data<-data[,c(meanandstd,562,563)]
  rm(features,meanandstd,data) # Memory Cleanup O.C.D.
}

#tidy.colnames (STEP 4)
{
  names <- colnames(trimmed.data)
  
  names <- gsub('BodyBody', 'Body', names)
  names <- gsub("tBody","time.body",names)
  names <- gsub("fBody","frequency.body",names)
  names <- gsub("tGrav","time.grav",names)
  names <- gsub("fGrav","frequency.grav",names)
  names <- gsub('-mean', 'Mean', names)
  names <- gsub('-std', 'Std', names)
  names <- gsub('[()-]', '', names)
  
  colnames(trimmed.data)<-names
  rm(names) # Memory Cleanup O.C.D.
}

#assign.names.for.activitylabels (STEP 3)
{
  trimmed.data$subject<-as.factor(trimmed.data$subject)
  trimmed.data$activitylabel<-as.factor(trimmed.data$activitylabel)
  levels(trimmed.data$activitylabel)<-as.character(read.table("./UCI HAR Dataset/activity_labels.txt")[,2])
}
tail(trimmed.data)
#write.tidy.dataset (STEP 5)
{
  tidy<-aggregate(trimmed.data[1:66], by=list(trimmed.data$subject, trimmed.data$activitylabel), FUN=mean, na.rm=TRUE)
  colnames(tidy)[1]<-"subject"
  colnames(tidy)[2]<-"activitylabel"
  write.table(tidy,file="./SamsungSummary.txt",row.names = FALSE)
  
  head(tidy)
}