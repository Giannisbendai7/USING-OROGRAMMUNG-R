install.packages("readxl")
library(readxl)
data <- read.csv("C:\\Users\\user\\Downloads\\Test.csv")
head(data)
mean(data$Item_Weight)
mean(data$Item_visibility)
library(readxl)
colnames(data)
head(data)
# Δες τη δομή του dataset
str(data)
Αντικατάσταση NA στην στήλη Item_Weight με τη μέση τιμή
data$Item_Weight[is.na(data$Item_Weight)] <- mean(data$Item_Weight, na.rm = TRUE)
Υπολογισμός στατιστικών για μια στήλη
mean(data$Item_Weight, na.rm = TRUE)  # Μέση τιμή
sd(data$Item_Weight, na.rm = TRUE)  # Τυπική Απόκλιση
min(data$Item_Weight, na.rm = TRUE)  # Ελάχιστη τιμή
max(data$Item_Weight, na.rm = TRUE)  # Μέγιστη τιμή
# Ιστόγραμμα για την στήλη Item_Weight
hist(data$Item_Weight, main="Histogram of Item Weight", xlab="Item_MRP", col="blue")
# Ομαδοποίηση και υπολογισμός μέσης τιμής ανά τύπο προϊόντος
aggregate(Item_MRP ~ Item_Type, data=data, FUN=mean)
