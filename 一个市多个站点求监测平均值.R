library(openxlsx)
library(dplyr)
#每几行处理一下
# 读取数据集
data <- read.xlsx("H:\\20230908 第二次整理内容\\山西省-气象资料数据\\晋城市-气象资料数据\\晋城市-气象资料数据-2022.xlsx",sheet=2)
str(data)
# 将数据集拆分成每2行一组
grouped_data <- split(data, rep(1:ceiling(nrow(data)/2), each = 2, length.out = nrow(data)))

# 计算每组的平均值
group_means <- lapply(grouped_data, function(group) {
  col_means <- colMeans(group, na.rm = TRUE)  # 每列的平均值
  col_means[is.nan(col_means)] <- NA  # 将NaN替换为NA
  col_means
})

# 合并每个组的平均值为一个数据框
result_table <- do.call(rbind, group_means)
str(result_table)

# 导出结果表格为CSV文件;
write.csv(result_table, file = "F:\\2022年晋城温度.csv", row.names = FALSE)