# Libraries
library(ggplot2)
library(dplyr)
library(plotly)
library(hrbrthemes)
library(openxlsx)
library(mgcv)
library(gam)

data<-read.xlsx("C:\\Users\\Ming.LAPTOP-SJBF2IL0\\Desktop\\山西省疾控\\晋城\\晋城全部.xlsx",sheet=5)
str(data)
data$时间<-as.numeric(data$时间)
data$时间<-as.Date(data$时间, origin = "1899-12-30")
str(data)
summary(data)

##
#PM
p1<- ggplot(data = data, aes(x = 时间, y = PM)) + 
  geom_line(color = "#00AFBB", size = 1) +
  labs(y = "PM2.5（μg/m3）") +  # 修改y轴的名称
  theme_minimal() 
p1
p2<-p1+ stat_smooth(
  color = "#FC4E07", fill = "#FC4E07",
  method = "gam"
)
p2
# 指定要保存的文件路径和文件名
file_path <- "C:\\Users\\Ming.LAPTOP-SJBF2IL0\\Desktop\\2020~2022晋城PM.png"
# 使用 ggsave() 导出图形到特定位置
ggsave(filename = file_path, plot = p2)

#PM10
p3<- ggplot(data = data, aes(x = 时间, y = PM10)) + 
  geom_line(color = "#E8C32EFF", size = 1) +
  labs(y = "PM10（μg/m3）") +  # 修改y轴的名称
  theme_minimal() 
                          

p4<-p3+ stat_smooth(
  color = "#FC4E07", fill = "#FC4E07",
  method = "gam"
)
p4
# 指定要保存的文件路径和文件名
file_path <- "C:\\Users\\Ming.LAPTOP-SJBF2IL0\\Desktop\\2020~2022晋城PM10.png"
# 使用 ggsave() 导出图形到特定位置
ggsave(filename = file_path, plot = p4)

#NO2
p5<- ggplot(data = data, aes(x = 时间, y = NO2)) + 
  geom_line(color = "#3FBC73FF", size = 1) +
  labs(y = "NO2（μg/m3）") +  # 修改y轴的名称
  theme_minimal()                        
p6<-p5+ stat_smooth(
  color = "#FC4E07", fill = "#FC4E07",
  method = "gam"
)
p6
# 指定要保存的文件路径和文件名
file_path <- "C:\\Users\\Ming.LAPTOP-SJBF2IL0\\Desktop\\2020~2022晋城NO2.png"
# 使用 ggsave() 导出图形到特定位置
ggsave(filename = file_path, plot = p6)

#SO2
p7<- ggplot(data = data, aes(x = 时间, y = SO2)) + 
  geom_line(color = "#482576FF", size = 1) +
  labs(y = "SO2（μg/m3）") +  # 修改y轴的名称
  theme_minimal()                        

p8<-p7+ stat_smooth(
  color = "#FC4E07", fill = "#FC4E07",
  method = "gam"
)
p8
# 指定要保存的文件路径和文件名
file_path <- "C:\\Users\\Ming.LAPTOP-SJBF2IL0\\Desktop\\2020~2022晋城SO2.png"
# 使用 ggsave() 导出图形到特定位置
ggsave(filename = file_path, plot = p8)

#CO
p9<- ggplot(data = data, aes(x = 时间, y = CO)) + 
  geom_line(color = "#A0D600FF", size = 1) +
  labs(y = "CO（mg/m3）") +  # 修改y轴的名称
  theme_minimal() 
                          

p10<-p9+ stat_smooth(
  color = "#FC4E07", fill = "#FC4E07",
  method = "gam"
)
p10
# 指定要保存的文件路径和文件名
file_path <- "C:\\Users\\Ming.LAPTOP-SJBF2IL0\\Desktop\\2020~2022晋城CO.png"
# 使用 ggsave() 导出图形到特定位置
ggsave(filename = file_path, plot = p10)

#O3
p11<- ggplot(data = data, aes(x = 时间, y = O3)) + 
  geom_line(color = "pink", size = 1) +
  labs(y = "O3（ug/m3）") +  # 修改y轴的名称
  theme_minimal() 
                          

p12<-p11+ stat_smooth(
  color = "#FC4E07", fill = "#FC4E07",
  method = "gam"
)
p12
# 指定要保存的文件路径和文件名
file_path <- "C:\\Users\\Ming.LAPTOP-SJBF2IL0\\Desktop\\2020~2022晋城O3.png"
# 使用 ggsave() 导出图形到特定位置
ggsave(filename = file_path, plot = p12)

#死亡人数
p13<- ggplot(data = data, aes(x = 时间, y = 死亡人数)) + 
  geom_line(color = "red", size = 1) +
  labs(y = "死亡人数") +  # 修改y轴的名称
  theme_minimal() 
                          

p14<-p13+ stat_smooth(
  color = "#FC4E07", fill = "#FC4E07",
  method = "gam"
)
p14
# 指定要保存的文件路径和文件名
file_path <- "C:\\Users\\Ming.LAPTOP-SJBF2IL0\\Desktop\\2020~2022晋城死亡人数.png"
# 使用 ggsave() 导出图形到特定位置
ggsave(filename = file_path, plot = p14)

#急诊人数
p15<- ggplot(data = data, aes(x = 时间, y = 急诊人数)) + 
  geom_line(color = "blue", size = 1) +
  labs(y = "急诊人数") +  # 修改y轴的名称
  theme_minimal() 
                          

p16<-p15+ stat_smooth(
  color = "#FC4E07", fill = "#FC4E07",
  method = "gam"
)
p16
# 指定要保存的文件路径和文件名
file_path <- "C:\\Users\\Ming.LAPTOP-SJBF2IL0\\Desktop\\2020~2022晋城急诊人数.png"
# 使用 ggsave() 导出图形到特定位置
ggsave(filename = file_path, plot = p16)

#门诊人数
p17<- ggplot(data = data, aes(x = 时间, y = 门诊人数)) + 
  geom_line(color = "purple", size = 1) +
  labs(y = "门诊人数") +  # 修改y轴的名称
  theme_minimal() 
                          

p18<-p17+ stat_smooth(
  color = "#FC4E07", fill = "#FC4E07",
  method = "gam"
)
p18
# 指定要保存的文件路径和文件名
file_path <- "C:\\Users\\Ming.LAPTOP-SJBF2IL0\\Desktop\\2016~2019太原门诊人数.png"
# 使用 ggsave() 导出图形到特定位置
ggsave(filename = file_path, plot = p18)

#住院人数
p19<- ggplot(data = data, aes(x = 时间, y = 住院人数)) + 
  geom_line(color = "#8B2500", size = 1) +
  labs(y = "住院人数") +  # 修改y轴的名称
  theme_minimal() 
                          

p20<-p19+ stat_smooth(
  color = "#FC4E07", fill = "#FC4E07",
  method = "gam"
)
p20
# 指定要保存的文件路径和文件名
file_path <- "C:\\Users\\Ming.LAPTOP-SJBF2IL0\\Desktop\\2020~2021晋城住院人数.png"
# 使用 ggsave() 导出图形到特定位置
ggsave(filename = file_path, plot = p20)
