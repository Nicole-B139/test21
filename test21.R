setwd("/cloud/project")

textmessages <- read.csv("TextMessages.csv", header =TRUE)

nrow(textmessages)

names(textmessages)

install.packages("pastecs")

library("pastecs")

is.factor(textmessages$Group) 

textmessages$Group <- as.factor(textmessages$Group)

is.numeric(textmessages$Baseline)

by(textmessages$Baseline, textmessages$Group, stat.desc)
