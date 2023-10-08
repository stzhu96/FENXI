library(openxlsx)
data<-read.xlsx("C:\\Users\\Ming.LAPTOP-SJBF2IL0\\Desktop\\山西省疾控\\晋城\\晋城全部.xlsx",sheet=8)
str(data)
library(corrplot)
data1<-data[,-1]
str(data1)
library(GGally)
ggcorr(data1, low = 'blue', mid = 'white', high = 'red', label = TRUE, label_alpha = TRUE)
