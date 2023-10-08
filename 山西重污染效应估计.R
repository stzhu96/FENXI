#导入数据
data<-read.xlsx("C:\\Users\\Ming.LAPTOP-SJBF2IL0\\Desktop\\山西省疾控\\阳泉\\阳泉全部.xlsx",sheet=1)
summary(data)
# 使用条件筛选找到大于200的行
selected<- data[data$PM > 150 | data$PM10 > 350 | data$NO2 > 280 |
                      data$SO2 > 800 | data$CO > 24 | data$O3 > 265 ,]

# 输出选定的行
print(selected)
str(selected)
#
selected$时间<-as.Date(selected$时间, origin = "1899-12-30")
selected$dow<-as.factor(weekdays(selected$时间))
str(selected)
summary(selected)


#导出数据
write.xlsx(selected,"F:\\阳泉重污染住院.xlsx")



#估计
model<-gam(死亡人数~PM10+PM+SO2+CO+O3+NO2+tem+rh+as.factor(dow),
                  data=selected,
                  family=quasipoisson)
summary(model)


model<-gam(急诊人数~PM10+PM+SO2+CO+O3+NO2+tem+rh+as.factor(dow),
                  data=selected,
                  family=quasipoisson)
summary(model)


model<-gam(门诊人数~PM10+PM+SO2+CO+O3+NO2+tem+rh+as.factor(dow),
                  data=selected,
                  family=quasipoisson)
summary(model)

model<-gam(住院人数~PM10+PM+SO2+CO+O3+NO2+tem+rh+as.factor(dow),
                  data=selected,
                  family=quasipoisson)
summary(model)
