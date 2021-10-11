# Nima Motiee
# # Deliverable #1
# dataset contains mpg test resuts for 50 prototype cars
# purpose is to create a linear model that predicts the mpg of prototypes 

#3
library(dplyr) # load my package
library(tidyverse) # load tidyverse package

#4
mecha_mpg <-read.csv('mechacar_mpg.csv',check.names = F,stringsAsFactors = F) # read and import the CSV file into DF

#5
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg) # perform linear regression using the LM function

#6 
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)) # using summary function to determine p value and rsquared value


# Deliverable #2
# dataset contains the results from multple production lots. 
# weight capacities of multiple suspension coils were tested 
# create suspension coils PSIs continuous variable across all manufacturing lots
# mean, median, variance, and standard deviation

# 2 
mecha_coil <-read.csv("suspension_coil.csv",check.names = F,stringsAsFactors = F) # Read and Import the CSV

#3
total_summary <- mecha_coil %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_Dev_PSI=sd(PSI),
                                          Num_Coil=n(), .groups = 'keep') # create DF 

#4 
lot_summary <- mecha_coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                         Median_PSI=median(PSI),
                                                                         Var_PSI=var(PSI),
                                                                         Std_Dev_PSI=sd(PSI),
                                                                         Num_Coil=n(), .groups = 'keep')  #create DF grouped on LOT




# Deliverable #3

#1. use t.test() to determine if the PSI across ALL lots is statistically different from the pop. mean of 1,500 PSI.
t.test(mecha_coil$PSI,mu=1500)


#2. Use t.test() function 3 more times with subset() to determine if PSI for each manufacturing lot is statistically different from the pop. mean of 1,500 PSI
lot1 <- subset(mecha_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(mecha_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(mecha_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)


