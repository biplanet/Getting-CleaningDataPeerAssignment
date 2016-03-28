run_analysis <- function(){
   
    # load training data files
    trainSubject = read.table("UCI HAR Dataset/train/subject_train.txt")
    trainX = read.table("UCI HAR Dataset/train/X_train.txt")
    trainY = read.table("UCI HAR Dataset/train/Y_train.txt")
    
    # load test data files  
    testSubject = read.table("UCI HAR Dataset/test/subject_test.txt")
    testX = read.table("UCI HAR Dataset/test/X_test.txt")
    testY = read.table("UCI HAR Dataset/test/Y_test.txt")
    
    
    # load features 
    features <- read.table("UCI HAR Dataset/features.txt", col.names=c("featureId", "featureLabel"))
    # check features date for mean or std
    selectedFeatures <- grep("-mean\\(\\)|-std\\(\\)", features$featureLabel)
    # load activities 
    activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names=c("activityId", "activityLabel"))
    # check activities date for mean or std
    activities$activityLabel <- gsub("_", "", as.character(activities$activityLabel))
    
    
    # merge test and training data 
    mergedSubject <- rbind(trainSubject, testSubject)
    names(mergedSubject) <- "subjectId"
    
    mergedX <- rbind(trainX, testX)
    #merge X for for mean & std
    mergedX <- mergedX[, selectedFeatures]
    
    #check mean or std
    names(mergedX) <- gsub("\\(|\\)", "", features$featureLabel[selectedFeatures])
    
    mergedY <- rbind(trainY, testY)
    
    names(mergedY) = "activityId"
    activity <- merge(mergedY, activities, by="activityId")$activityLabel
    
    #merge data frames of different columns to form one data table
    cleanedData <- cbind(mergedSubject, mergedX, activity)
    
    write.table(cleanedData, "cleanedData.txt",row.names = FALSE)
    
    #create final aggregated dataset grouped by subject and activity after applying standard deviation and mean
    cleanedTable <- data.table(cleanedData)
    aggregatedData<- cleanedTable[, lapply(.SD, mean), by=c("subjectId", "activity")]
    write.table(aggregatedData, "aggregatedData.txt",row.names = FALSE)
}