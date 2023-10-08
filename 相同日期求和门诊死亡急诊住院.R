library(openxlsx)
library(dplyr)
data<-read.xlsx("H:\\20230908 第二次整理内容\\山西省-医院门诊数据\\太原市-医院门诊数据\\太原市-医院门诊数据-2022.xlsx",sheet=2)
View(data)
str(data)

data$门诊总量<-as.numeric(data$门诊总量)
# 使用dplyr库进行按日期求和
result <- data %>%
  group_by(接诊日期) %>%
  summarize(Sum_Value = sum(门诊总量))
# 打印结果
print(result)
# 导出结果表格为CSV文件;
write.csv(result, file = "F:\\2022年太原门诊.csv", row.names = FALSE)

