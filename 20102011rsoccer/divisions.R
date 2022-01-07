#by gitboyzorro5
#create divisions and order by date
library('lubridate')
allteams20102011 <- read.csv('allteams20102011.csv')

#change date strings to Date objects
#allteams20102011$Date <- dmy(allteams20102011$Date)
allteams20102011 <- allteams20102011[order(as.Date(allteams20102011$Date, format = "%d/%m/%Y"), decreasing = FALSE),]
#calculate total goals
allteams20102011$TG <- allteams20102011$FTHG + allteams20102011$FTAG
allteams20102011$OV15 <- ifelse(allteams20102011$TG >= 2,"Y","N")
allteams20102011$OV25 <- ifelse(allteams20102011$TG >= 3,"Y","N")
allteams20102011$OV35 <- ifelse(allteams20102011$TG >= 4,"Y","N")

#create divisions subsets
B1 <- subset(allteams20102011, Div == "B1")
D1 <- subset(allteams20102011, Div == "D1")
D2 <- subset(allteams20102011, Div == "D2")
E0 <- subset(allteams20102011, Div == "E0")
E1 <- subset(allteams20102011, Div == "E1")
E2 <- subset(allteams20102011, Div == "E2")
E3 <- subset(allteams20102011, Div == "E3")
EC <- subset(allteams20102011, Div == "EC")
F1 <- subset(allteams20102011, Div == "F1")
F2 <- subset(allteams20102011, Div == "F2")
G1 <- subset(allteams20102011, Div == "G1")
I1 <- subset(allteams20102011, Div == "I1")
I2 <- subset(allteams20102011, Div == "I2")
N1 <- subset(allteams20102011, Div == "N1")
P1 <- subset(allteams20102011, Div == "P1")
SC0 <- subset(allteams20102011, Div == "SC0")
SC1 <- subset(allteams20102011, Div == "SC1")
SC2 <- subset(allteams20102011, Div == "SC2")
SC3 <- subset(allteams20102011, Div == "SC3")
SP1 <- subset(allteams20102011, Div == "SP1")
SP2 <- subset(allteams20102011, Div == "SP2")
T1 <- subset(allteams20102011, Div == "T1")
