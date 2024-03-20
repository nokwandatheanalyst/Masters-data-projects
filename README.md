R Code- ASSIGNMENT 1
install.packages("dplyr")
install.packages("ggplot2")
install.packages("skimr")
install.packages("readr")
install.packages("lattice")
install.packages("tidyr")
install.packages("here")
install.packages("tidyverse")
install.packages("ggubr")
install.packages("describer")
install.packages("psych")
install.packages("gtsummary")
install.packages("janitor")
install.packages("stringr")
install.packages("ggpubr")
install.packages("gmodels")
install.packages("summarytools")
install.packages("epiDisplay")
install.packages("epiR")
install.packages("survival")
install.packages("tab")
install.packages("gtools")
install.packages("gtable")
install.packages("stringi")
install.packages("MASS")
install.packages("glue")
install.packages("broom")
install.packages("palmerpenguins")
install.packages("Hmisc")
install.packages("car")
install.packages("caret")
install.packages("ROCR")
install.packages("labelled")
library("here")
library("dplyr")
library("skimr")
library("ggplot2")
library("readr")
library("lattice")
library("tidyr")
library("tidyverse")
library("ggubr")
library("describe")
library("psych")
library("gtsummary")
library("janitor")
library("stringr")
library("gmodels")
library("summarytools")
library("epiDisplay")
library("epiR")
library("survival")
library("tab")
library("gtools")
library("gtable")
library("stringi")
library("MASS")
library("glue")
library("broom")
library("palmerpenguins")
library("Hmisc")
library("car")
library("caret")
library("ROCR")
library("labelled")
##-------------------------------------------------------------------------------------------------
##Question 1A:
##Summary statistics
View(BiostatII_2022_Assign1_data.46)
str(BiostatII_2022_Assign1_data.46)
head(BiostatII_2022_Assign1_data.46)
names(BiostatII_2022_Assign1_data.46)
summary(BiostatII_2022_Assign1_data.46)
skim(BiostatII_2022_Assign1_data.46)
summary(BiostatII_2022_Assign1_data.46$age)
summary(BiostatII_2022_Assign1_data.46$v_load)
describe(BiostatII_2022_Assign1_data.46)
##Check Variable characters:
is.factor(BiostatII_2022_Assign1_data.46$educated)
as.factor(BiostatII_2022_Assign1_data.46$educated)
BiostatII_2022_Assign1_data.46$educated<-as.factor(BiostatII_2022_Assign1_data.46$educated)
is.factor(BiostatII_2022_Assign1_data.46$educated)
class(BiostatII_2022_Assign1_data.46$educated)
is.factor(BiostatII_2022_Assign1_data.46$sex)
as.factor(BiostatII_2022_Assign1_data.46$sex)
BiostatII_2022_Assign1_data.46$sex<-as.factor(BiostatII_2022_Assign1_data.46$sex)
is.factor(BiostatII_2022_Assign1_data.46$sex)
class(BiostatII_2022_Assign1_data.46$sex)
is.factor(BiostatII_2022_Assign1_data.46$drug)
as.factor(BiostatII_2022_Assign1_data.46$drug)
BiostatII_2022_Assign1_data.46$drug<-as.factor(BiostatII_2022_Assign1_data.46$drug)
is.factor(BiostatII_2022_Assign1_data.46$drug)
class(BiostatII_2022_Assign1_data.46$drug)
is.factor(BiostatII_2022_Assign1_data.46$AZT)
as.factor(BiostatII_2022_Assign1_data.46$AZT)
BiostatII_2022_Assign1_data.46$AZT<-as.factor(BiostatII_2022_Assign1_data.46$AZT)
is.factor(BiostatII_2022_Assign1_data.46$AZT)
class(BiostatII_2022_Assign1_data.46$AZT)
is.factor(BiostatII_2022_Assign1_data.46$v_load)
is.numeric(BiostatII_2022_Assign1_data.46$v_load)
class(BiostatII_2022_Assign1_data.46$v_load)
is.factor(BiostatII_2022_Assign1_data.46$age)
is.numeric(BiostatII_2022_Assign1_data.46$age)
class(BiostatII_2022_Assign1_data.46$age)
is.factor(BiostatII_2022_Assign1_data.46$pid)
is.numeric(BiostatII_2022_Assign1_data.46$pid)
BiostatII_2022_Assign1_data.46$pid <- as.character(BiostatII_2022_Assign1_data.46$pid)
is.character(BiostatII_2022_Assign1_data.46$pid)
class(BiostatII_2022_Assign1_data.46$pid)
is.factor(BiostatII_2022_Assign1_data.46$X)
is.numeric(BiostatII_2022_Assign1_data.46$X)
class(BiostatII_2022_Assign1_data.46$X)
##-------------------------------------------------------------------------------------------------
##Summary statistics table:
tbl_summary(BiostatII_2022_Assign1_data.46,by = AZT, statistic = list(c(1,7,8) ~ "{mean} ({sd})",c(2,3) ~ "{median}
({p25}, {p75})",all_categorical() ~ "{n} ({p}%)"),digits = all_continuous() ~ 2,missing = "no") %>%
add_overall() %>%
modify_caption("Characteristics of the sample (overall and by AZT)",) %>%
bold_labels()
##-------------------------------------------------------------------------------------------------
##Check for Normality
##Age
class(BiostatII_2022_Assign1_data.46$age)
hist(BiostatII_2022_Assign1_data.46$age,main= "", xlab="Age (years)")
summary(BiostatII_2022_Assign1_data.46$age)
shapiro.test(BiostatII_2022_Assign1_data.46$age)
qqnorm(BiostatII_2022_Assign1_data.46$age, ylab = "Age (years) ", col = "dark green", pch = 1, frame = FALSE)
qqline(BiostatII_2022_Assign1_data.46$age, col = "steelblue", lwd = 2)
qqPlot(BiostatII_2022_Assign1_data.46$age)
boxplot(BiostatII_2022_Assign1_data.46$age,xlab = "Age (years)")
##Viral load
hist(BiostatII_2022_Assign1_data.46$v_load,main = "",xlab = "log10_vload")
summary(BiostatII_2022_Assign1_data.46$v_load)
shapiro.test(BiostatII_2022_Assign1_data.46$v_load)
qqnorm(BiostatII_2022_Assign1_data.46$v_load, ylab = "log10_vload ", col = "dark green", pch = 1, frame = FALSE)
qqline(BiostatII_2022_Assign1_data.46$v_load, col = "steelblue", lwd = 2)
qqPlot(BiostatII_2022_Assign1_data.46$v_load)
boxplot(BiostatII_2022_Assign1_data.46$v_load,xlab = "log10_vload")
##Summary statistics continued
View(BiostatII_2022_Assign1_data.46)
str(BiostatII_2022_Assign1_data.46)
summary(BiostatII_2022_Assign1_data.46)
table(BiostatII_2022_Assign1_data.46$sex)
tabyl(BiostatII_2022_Assign1_data.46$sex)
summary(BiostatII_2022_Assign1_data.46)
nrow(BiostatII_2022_Assign1_data.46)
skim(BiostatII_2022_Assign1_data.46)
quantile(BiostatII_2022_Assign1_data.46$age)
quantile(BiostatII_2022_Assign1_data.46$v_load)
mean(BiostatII_2022_Assign1_data.46$v_load)
mean(BiostatII_2022_Assign1_data.46$age)
sd(BiostatII_2022_Assign1_data.46$v_load)
sd(BiostatII_2022_Assign1_data.46$age)
var(BiostatII_2022_Assign1_data.46)
var(BiostatII_2022_Assign1_data.46$v_load)
var(BiostatII_2022_Assign1_data.46$age)
cor(BiostatII_2022_Assign1_data.46$v_load,BiostatII_2022_Assign1_data.46$age)
sd(BiostatII_2022_Assign1_data.46$v_load) / mean(BiostatII_2022_Assign1_data.46$v_load)
sd(BiostatII_2022_Assign1_data.46$age) / mean(BiostatII_2022_Assign1_data.46$age)
median(BiostatII_2022_Assign1_data.46$v_load)
median(BiostatII_2022_Assign1_data.46$age)
IQR(BiostatII_2022_Assign1_data.46$v_load)
IQR(BiostatII_2022_Assign1_data.46$age)
by(BiostatII_2022_Assign1_data.46, BiostatII_2022_Assign1_data.46$sex, summary)
fivenum(BiostatII_2022_Assign1_data.46$v_load)
fivenum(BiostatII_2022_Assign1_data.46$age)
table(BiostatII_2022_Assign1_data.46$educated)
prop.table(table(BiostatII_2022_Assign1_data.46$educated))
100*prop.table(table(BiostatII_2022_Assign1_data.46$educated))
ggplot(data = BiostatII_2022_Assign1_data.46, aes(educated, age)) +
geom_boxplot()+theme_light()
table(BiostatII_2022_Assign1_data.46$sex)
prop.table(table(BiostatII_2022_Assign1_data.46$sex))
100*prop.table(table(BiostatII_2022_Assign1_data.46$sex))
ggplot(data = BiostatII_2022_Assign1_data.46, aes(sex, age)) +
geom_boxplot()+theme_light()
table(BiostatII_2022_Assign1_data.46$drug)
prop.table(table(BiostatII_2022_Assign1_data.46$drug))
100*prop.table(table(BiostatII_2022_Assign1_data.46$drug))
ggplot(data = BiostatII_2022_Assign1_data.46, aes(drug, age)) +
geom_boxplot()+theme_light()
table(BiostatII_2022_Assign1_data.46$AZT)
prop.table(table(BiostatII_2022_Assign1_data.46$AZT))
100*prop.table(table(BiostatII_2022_Assign1_data.46$AZT))
ggplot(data = BiostatII_2022_Assign1_data.46, aes(AZT, age)) +
geom_boxplot()+theme_light()
table(BiostatII_2022_Assign1_data.46$AZT)
prop.table(table(BiostatII_2022_Assign1_data.46$AZT))
100*prop.table(table(BiostatII_2022_Assign1_data.46$AZT))
ggplot(data = BiostatII_2022_Assign1_data.46, aes(AZT,v_load)) +
geom_boxplot()+theme_light()
table(BiostatII_2022_Assign1_data.46$age,BiostatII_2022_Assign1_data.46$educated)
table(BiostatII_2022_Assign1_data.46$sex,BiostatII_2022_Assign1_data.46$educated)
table(BiostatII_2022_Assign1_data.46$age,BiostatII_2022_Assign1_data.46$sex)
table(BiostatII_2022_Assign1_data.46$age,BiostatII_2022_Assign1_data.46$AZT)
table(BiostatII_2022_Assign1_data.46$sex,BiostatII_2022_Assign1_data.46$AZT)
-
##Question 1b)
##MULTIPLE REGRESSION
lm(v_load ~ age + sex + drug + AZT , data = BiostatII_2022_Assign1_data.46)
fit <- lm(v_load ~ age + sex + drug + AZT, data = BiostatII_2022_Assign1_data.46)
summary(fit)
summary(fit)$coefficients
coef(summary(fit))
plot(fit)
coef(fit)
fit$coef
confint(fit)
confint(fit, conf.level=0.95)
tidy(fit)
glance(fit)
##OR
glm(v_load ~ age + drug + AZT + sex,data = BiostatII_2022_Assign1_data.46, family = gaussian(link = "identity" ))
fit_1 <- glm(v_load ~ age + drug + AZT + sex,data = BiostatII_2022_Assign1_data.46, family = gaussian(link = "identity"
))
summary(fit_1)
summary(fit_1)$coefficients
coef(summary(fit_1))
plot(fit_1)
coef(fit_1)
fit_1$coef
confint(fit_1)
confint(fit_1, conf.level=0.95)
tidy(fit_1)
glance(fit_1)
###SIMPLE LINEAR REGRESSION
##Age variable
mod1_age = lm(v_load ~ age, data = BiostatII_2022_Assign1_data.46)
summary(mod1_age)
summary(mod1_age)$coefficients
##OR
lm(v_load ~ age, data = BiostatII_2022_Assign1_data.46)
mod1_age <- lm(v_load ~ age, data = BiostatII_2022_Assign1_data.46)
summary(mod1_age)
summary(mod1_age)$coefficients
##SEX Variable
mymodel<-glm(v_load ~ sex,
data = BiostatII_2022_Assign1_data.46,
family = 'binomial')
summary(mymodel)
summary(mymodel)$coefficients
##Drug variable
model2 <- lm(v_load ~ drug,data = BiostatII_2022_Assign1_data.46)
summary(model2)
summary(model2)$coefficients
##AZT Variable
model3 <- lm(v_load ~ AZT,data = BiostatII_2022_Assign1_data.46)
summary(model3)
summary(model3)$coefficients
##ANOVA
anova(mod1_age)
anova(fit_1)
anova(mod1_age,fit)
anova(mod1_age,fit_1)
##TABULATING MLR STATISTICS
tbl_regression(fit, intercept = TRUE) %>% bold_labels()
##Residual Diagnostics
##CHECK LINEARITY ASSUMPTIONS
##1.Normality (QQ-plot)
plot(fit)
plot(fit_1)
par(mfrow=c(2,2))
##QQ plot-Normality met
##plot does not deviate significantly from line, normality met
##There is a pattern in the residual plot. This suggests that we can assume linear relationship between the predictors and the
outcome variables.
##2.Multi-Collinearity
vif(fit)
vif(fit_1)
##Less than 5, independent variables are not highly correlated
##3.Outliers,leverage,influence)
plot(cooks.distance(fit_1), pch = 16, col = "blue")
##4.HeterosCedasticity (Constant variance assumption)
##5.Independence
##PREDICTED VALUES
head(augment(fit_1))
head(augment(fit))
head(augment(fit_1),n=20)
head(augment(fit),n=20)
tail(augment(fit_1))
tail(augment(fit))
contrasts(BiostatII_2022_Assign1_data.46$sex)
##female=0,male=1
contrasts(BiostatII_2022_Assign1_data.46$drug)
##ddC=0,ddI=1
contrasts(BiostatII_2022_Assign1_data.46$AZT)
##failure=0,intolerance=1
##-------------------------------------------------------------------------------------------------
##Question 2b:
##Fig1 v_load vs Age
lm(BiostatII_2022_Assign1_data.46$age~ BiostatII_2022_Assign1_data.46$v_load)
abline(23.6539, 0.8009)
abline(lm(BiostatII_2022_Assign1_data.46$age ~ BiostatII_2022_Assign1_data.46$v_load),col = "blue")
plot(BiostatII_2022_Assign1_data.46$age,BiostatII_2022_Assign1_data.46$v_load,main = "v load vs age",xlab ="Age
(years)",ylab = "log10 viral load (copies/mL)",pch = 16,frame = FALSE,col =
"firebrick2",abline(lm(BiostatII_2022_Assign1_data.46$v_load ~ BiostatII_2022_Assign1_data.46$age),col = "blue"))
##OR
plot(v_load ~ age, data = BiostatII_2022_Assign1_data.46)
abline(lm(BiostatII_2022_Assign1_data.46$v_load ~ BiostatII_2022_Assign1_data.46$age),col = "red")
##OR
scatter.smooth(BiostatII_2022_Assign1_data.46$age,BiostatII_2022_Assign1_data.46$v_load,main="v load vs age",xlab
="Age (years)", ylab = "log10 viral load" )
##OR
ggplot(BiostatII_2022_Assign1_data.46, aes(x = age, y = v_load)) + geom_point() + stat_smooth() + theme_minimal()
ggplot(BiostatII_2022_Assign1_data.46, aes(age, v_load)) + geom_point() + stat_smooth(method = lm)
##
cor (BiostatII_2022_Assign1_data.46$v_load,BiostatII_2022_Assign1_data.46$age,method = "pearson")
cor(BiostatII_2022_Assign1_data.46$v_load,BiostatII_2022_Assign1_data.46$age, use = "complete.obs")
cor (BiostatII_2022_Assign1_data.46$age, BiostatII_2022_Assign1_data.46$v_load)
##-------------------------------------------------------------------------------------------------
##Fig2 v_load vs AZT
boxplot(BiostatII_2022_Assign1_data.46$v_load ~ BiostatII_2022_Assign1_data.46$AZT, col=rainbow(4),xlab =
"AZT",ylab = "log10 viral load (copies/mL)")
