# MechaCar_Statistical_Analysis

## Deliverable #1
### Linear Regression to Predict MPG

![name-of-you-image](https://github.com/Nimamotiee/MechaCar_Statistical_Analysis/blob/main/Deliverable1.png)

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Per the above screenshot, both Vehicle Length and Ground Clearance provided a non random amount of variance to the mpg values in the dataset. Meaning they provided a significant impact on the MPG of the prototypes.

* Is the slope of the linear model considered to be zero? Why or why not?
 
Per the screenshot, the P value appears to be significantly smaller in value than the assumed Alpha of .05 therefore reject our null hypo and further indcate that the slope of this linear model is not zero

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Per the calc, R square = .7149 which means that 71% of all mpg predictions will be determined by this model therefore yes predicts effectively.




## Deliverable #2
### Summary Stats on Suspension Coils
![name-of-you-image](https://github.com/Nimamotiee/MechaCar_Statistical_Analysis/blob/main/D2%20Summary.png)
![name-of-you-image](https://github.com/Nimamotiee/MechaCar_Statistical_Analysis/blob/main/D2%20Lot%20Summary%20.png)

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Per the above, the main set of data not grouped by lot will show that yes, the current manufacturing data meets the design specifications as the var_PSI = 62.29356.
When breaking down the summary per Manufacturing Lot we can see that Lots 1 and 2 are well within the requirement. Yet, Lot 3s variance is disproportionaly off to the others.


## Deliverable #3
### T-Tests on Suspension Coils
![name-of-you-image](https://github.com/Nimamotiee/MechaCar_Statistical_Analysis/blob/main/D3%201%20Sample%20Test.png)

Per the above screenshot, the P-value of 0.06 is slightly larger that our assumed alpha of 0.05 therefore not enough evidence to reject null. 

![name-of-you-image](https://github.com/Nimamotiee/MechaCar_Statistical_Analysis/blob/main/D3%20Lot%201.png)
![name-of-you-image](https://github.com/Nimamotiee/MechaCar_Statistical_Analysis/blob/main/D3%20Lot%202.png)
![name-of-you-image](https://github.com/Nimamotiee/MechaCar_Statistical_Analysis/blob/main/D3%20Lot%203.png)
Per the above, the only individual lot that we must reject would be Lot 3 as the p-value of 0.04 is lower than our assumed alpha of 0.05. 


## Deliverable #4
### Study Design: MechaCar vs Competition

* What metric or metrics are you going to test?

The following metrics would be tested: 

Safety Feature Rating: Independent Variable
Current Price (Selling): Dependent Variable
Drive Package : Independent Variable
Engine (Electric, Hybrid, Gasoline / Conventional): Independent Variable
Resale Value: Independent Variable
Average Annual Cost of ownership (Maintenance): Independent Variable
MPG (Gasoline Efficiency): Independent Variable

* What is the null hypothesis or alternative hypothesis?
Null Hypo- The pricing is appropriate based on performance of key factors.
Alt Hypo- The pricing is not appropriate based on performance of key factors.

* What statistical test would you use to test the hypothesis? And why?

Multiple Linear Regression 


* What data is needed to run the statistical test?
Key performance data for MechaCar and its competitors over the past 5 years.
Pricing related to the cars being compared.


