# 创建一个示例数据框
data <- data.frame(
  ID = 1:10,
  indicator1 = c(150, 22, 18, 21, 19, 23, 24, 17, 20, 25),
  indicator2 = c(21, 140, 230, 250, 170, 190, 220, 260, 210, 180),
  indicator3 = c(19, 200, 220, 240, 230, 190, 210, 180, 250, 200),
  indicator4 = c(25, 210, 230, 180, 190, 200, 170, 220, 240, 210),
  indicator5 = c(18, 220, 210, 250, 230, 240, 190, 200, 170, 180),
  indicator6 = c(20, 230, 220, 250, 190, 180, 170, 240, 210, 220)
)

# 使用条件筛选找到大于200的行
selected_rows <- data[data$indicator1 > 150 | data$indicator2 > 200 | data$indicator3 > 200 |
                      data$indicator4 > 200 | data$indicator5 > 200 | data$indicator6 > 200, ]

# 输出选定的行
print(selected_rows)
