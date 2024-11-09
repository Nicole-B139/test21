setwd("/cloud/project")
Text <- read.csv("TextMessages.csv", header =TRUE)
names(Text)
is.factor(Text$Six_months)
install.packages("pastecs")
library(pastecs)
round( stat.desc(Text$Baseline) , 2)
round( stat.desc(Text$Six_months) , 2)
#from this given data set we can determine that their
#are 50 participants. The mean is 57.4. It is lower than the baseline mean at
#65.22, which indicates a decline from baseline to sixmonths. The standard 
#deviation is 13.93 which shows that there is variability among the participants 
#six month scores. The min value is 9 showing that a least one person scored 
#very low.The max score is 79, which is lower than baseline of 89. This shows 
#that participants generally scored lower at the six month point versus baseline. 
#The first quartile is 53 meaning 25% of people scored below this value. The
#median is the midpoint which is 60.5. Lastly, the 3rd quartile is 63, the point 
#of where 75% of the scores fall.
stats_list <- lapply(Text[, c("Baseline", "Six_months")], function(x) stat.desc(x, basic = TRUE, desc = TRUE, norm = TRUE))
combined_stats <- do.call(cbind, stats_list)  
colnames(combined_stats) <- c("Baseline", "Six_Months")                             
combined_stats <- round(combined_stats, 2)
print(combined_stats)
#The purpose of the code above is to get a clearer look of the stats side by
#side. We can note some significant differences as stated above.