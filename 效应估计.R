install.packages("mgcv")
library(mgcv)
library(openxlsx)


data<-read.xlsx("C:\\Users\\Ming.LAPTOP-SJBF2IL0\\Desktop\\山西省疾控\\太原\\16~22门诊.xlsx",sheet=1)
str(data)
data$时间<-as.Date(data$时间, origin = "1899-12-30")
data$dow<-as.factor(weekdays(data$时间))
str(data)
summary(data)

model<-gam(死亡人数~PM+ns(时间,df=4*7)+ns(PM10,df=4*3)+
                  ns(CO,df=4*3)+ns(SO2,df=4*3)+ns(NO2,df=4*3)+
                  ns(O3,df=4*3)+ns(tem,df=4*6)+ns(rh,df=4*3)+as.factor(dow),
                  data=data,
                  family=quasipoisson)
summary(model)

model<-gam(死亡人数~PM10+ns(时间,df=4*7)+ns(PM,df=4*3)+
                  ns(CO,df=4*3)+ns(SO2,df=4*3)+ns(NO2,df=4*3)+
                  ns(O3,df=4*3)+ns(tem,df=4*6)+ns(rh,df=4*3)+as.factor(dow),
                  data=data,
                  family=quasipoisson)
summary(model)

model<-gam(死亡人数~CO+ns(时间,df=4*7)+ns(PM,df=4*3)+
                  ns(PM10,df=4*3)+ns(SO2,df=4*3)+ns(NO2,df=4*3)+
                  ns(O3,df=4*3)+ns(tem,df=4*6)+ns(rh,df=4*3)+as.factor(dow),
                  data=data,
                  family=quasipoisson)
summary(model)

model<-gam(死亡人数~NO2+ns(时间,df=4*7)+ns(PM,df=4*3)+
                  ns(PM10,df=4*3)+ns(CO,df=4*3)+ns(SO2,df=4*3)+
                  ns(O3,df=4*3)+ns(tem,df=4*6)+ns(rh,df=4*3)+as.factor(dow),
                  data=data,
                  family=quasipoisson)
summary(model)

model<-gam(死亡人数~SO2+ns(时间,df=4*7)+ns(PM,df=4*3)+
                  ns(PM10,df=4*3)+ns(CO,df=4*3)+ns(NO2,df=4*3)+
                  ns(O3,df=4*3)+ns(tem,df=4*6)+ns(rh,df=4*3)+as.factor(dow),
                  data=data,
                  family=quasipoisson)
summary(model)

model<-gam(死亡人数~O3+ns(时间,df=4*7)+ns(PM,df=4*3)+
                  ns(PM10,df=4*3)+ns(CO,df=4*3)+ns(NO2,df=4*3)+
                  ns(SO2,df=4*3)+ns(tem,df=4*6)+ns(rh,df=4*3)+as.factor(dow),
                  data=data,
                  family=quasipoisson)
summary(model)
###
###
str(data)
model<-gam(急诊人数~PM+ns(时间,df=4*7)+ns(PM10,df=4*3)+
                  ns(CO,df=4*3)+ns(SO2,df=4*3)+ns(NO2,df=4*3)+
                  ns(O3,df=4*3)+ns(tem,df=4*6)+ns(rh,df=4*3)+as.factor(dow),
                  data=data,
                  family=quasipoisson)
summary(model)

model<-gam(急诊人数~PM10+ns(时间,df=4*7)+ns(PM,df=4*3)+
                  ns(CO,df=4*3)+ns(SO2,df=4*3)+ns(NO2,df=4*3)+
                  ns(O3,df=4*3)+ns(tem,df=4*6)+ns(rh,df=4*3)+as.factor(dow),
                  data=data,
                  family=quasipoisson)
summary(model)

model<-gam(急诊人数~CO+ns(时间,df=4*7)+ns(PM,df=4*3)+
                  ns(PM10,df=4*3)+ns(SO2,df=4*3)+ns(NO2,df=4*3)+
                  ns(O3,df=4*3)+ns(tem,df=4*6)+ns(rh,df=4*3)+as.factor(dow),
                  data=data,
                  family=quasipoisson)
summary(model)

model<-gam(急诊人数~NO2+ns(时间,df=4*7)+ns(PM,df=4*3)+
                  ns(PM10,df=4*3)+ns(CO,df=4*3)+ns(SO2,df=4*3)+
                  ns(O3,df=4*3)+ns(tem,df=4*6)+ns(rh,df=4*3)+as.factor(dow),
                  data=data,
                  family=quasipoisson)
summary(model)

model<-gam(急诊人数~SO2+ns(时间,df=4*7)+ns(PM,df=4*3)+
                  ns(PM10,df=4*3)+ns(CO,df=4*3)+ns(NO2,df=4*3)+
                  ns(O3,df=4*3)+ns(tem,df=4*6)+ns(rh,df=4*3)+as.factor(dow),
                  data=data,
                  family=quasipoisson)
summary(model)

model<-gam(急诊人数~O3+ns(时间,df=4*7)+ns(PM,df=4*3)+
                  ns(PM10,df=4*3)+ns(CO,df=4*3)+ns(NO2,df=4*3)+
                  ns(SO2,df=4*3)+ns(tem,df=4*6)+ns(rh,df=4*3)+as.factor(dow),
                  data=data,
                  family=quasipoisson)
summary(model)
##
model<-gam(门诊人数~PM+ns(时间,df=2*7)+ns(PM10,df=2*3)+
                  ns(CO,df=2*3)+ns(SO2,df=2*3)+ns(NO2,df=2*3)+
                  ns(O3,df=2*3)+ns(tem,df=2*6)+ns(rh,df=2*3)+as.factor(dow),
                  data=data,
                  family=quasipoisson)
summary(model)

model<-gam(门诊人数~PM10+ns(时间,df=2*7)+ns(PM,df=2*3)+
                  ns(CO,df=2*3)+ns(SO2,df=2*3)+ns(NO2,df=2*3)+
                  ns(O3,df=2*3)+ns(tem,df=2*6)+ns(rh,df=2*3)+as.factor(dow),
                  data=data,
                  family=quasipoisson)
summary(model)

model<-gam(门诊人数~CO+ns(时间,df=2*7)+ns(PM,df=2*3)+
                  ns(PM10,df=2*3)+ns(SO2,df=2*3)+ns(NO2,df=2*3)+
                  ns(O3,df=2*3)+ns(tem,df=2*6)+ns(rh,df=2*3)+as.factor(dow),
                  data=data,
                  family=quasipoisson)
summary(model)

model<-gam(门诊人数~NO2+ns(时间,df=2*7)+ns(PM,df=2*3)+
                  ns(PM10,df=2*3)+ns(CO,df=2*3)+ns(SO2,df=2*3)+
                  ns(O3,df=2*3)+ns(tem,df=2*6)+ns(rh,df=2*3)+as.factor(dow),
                  data=data,
                  family=quasipoisson)
summary(model)

model<-gam(门诊人数~SO2+ns(时间,df=2*7)+ns(PM,df=2*3)+
                  ns(PM10,df=2*3)+ns(CO,df=2*3)+ns(NO2,df=2*3)+
                  ns(O3,df=2*3)+ns(tem,df=2*6)+ns(rh,df=2*3)+as.factor(dow),
                  data=data,
                  family=quasipoisson)
summary(model)

model<-gam(门诊人数~O3+ns(时间,df=2*7)+ns(PM,df=2*3)+
                  ns(PM10,df=2*3)+ns(CO,df=2*3)+ns(NO2,df=2*3)+
                  ns(SO2,df=2*3)+ns(tem,df=2*6)+ns(rh,df=2*3)+as.factor(dow),
                  data=data,
                  family=quasipoisson)
summary(model)

##
model<-gam(住院人数~PM+ns(时间,df=3*7)+ns(PM10,df=3*3)+
                  ns(CO,df=3*3)+ns(SO2,df=3*3)+ns(NO2,df=3*3)+
                  ns(O3,df=3*3)+ns(tem,df=3*6)+ns(rh,df=3*3)+as.factor(dow),
                  data=data,
                  family=quasipoisson)
summary(model)


model<-gam(住院人数~PM10+ns(时间,df=3*7)+ns(PM,df=3*3)+
                  ns(CO,df=3*3)+ns(SO2,df=3*3)+ns(NO2,df=3*3)+
                  ns(O3,df=3*3)+ns(tem,df=3*6)+ns(rh,df=3*3)+as.factor(dow),
                  data=data,
                  family=quasipoisson)
summary(model)

model<-gam(住院人数~CO+ns(时间,df=3*7)+ns(PM,df=3*3)+
                  ns(PM10,df=3*3)+ns(SO2,df=3*3)+ns(NO2,df=3*3)+
                  ns(O3,df=3*3)+ns(tem,df=3*6)+ns(rh,df=3*3)+as.factor(dow),
                  data=data,
                  family=quasipoisson)
summary(model)

model<-gam(住院人数~NO2+ns(时间,df=3*7)+ns(PM,df=3*3)+
                  ns(PM10,df=3*3)+ns(CO,df=3*3)+ns(SO2,df=3*3)+
                  ns(O3,df=3*3)+ns(tem,df=3*6)+ns(rh,df=3*3)+as.factor(dow),
                  data=data,
                  family=quasipoisson)
summary(model)

model<-gam(住院人数~SO2+ns(时间,df=3*7)+ns(PM,df=3*3)+
                  ns(PM10,df=3*3)+ns(CO,df=3*3)+ns(NO2,df=3*3)+
                  ns(O3,df=3*3)+ns(tem,df=3*6)+ns(rh,df=3*3)+as.factor(dow),
                  data=data,
                  family=quasipoisson)
summary(model)

model<-gam(住院人数~O3+ns(时间,df=3*7)+ns(PM,df=3*3)+
                  ns(PM10,df=3*3)+ns(CO,df=3*3)+ns(NO2,df=3*3)+
                  ns(SO2,df=3*3)+ns(tem,df=3*6)+ns(rh,df=3*3)+as.factor(dow),
                  data=data,
                  family=quasipoisson)
summary(model)
