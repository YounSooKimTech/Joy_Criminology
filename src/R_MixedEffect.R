library(tidyverse)
library(ggplot2)
library(lme4)
library(lmerTest)
library(datasets)
library(stargazer)


###############################################
github_url = "https://raw.githubusercontent.com/YounSooKimTech/Joy_Criminology/main/Data/df_total_crime_env_state.csv"

data <- read.csv(url(github_url))

names(data)

summary(data)

#############################################


################################################# +PM
formula_v_m <- "Violent_crime_per_100K ~ UV_Irradiance + PM25 +  Median_age_years + Percent_Male + Percent_White + Percent_BA_or_higher + Percent_unemployed + Per_capita_income_dollars + (1|Region) + (1|Year)"

formula_p_m <- "Property_crime_per_100K ~ UV_Irradiance + PM25 + Median_age_years + Percent_Male + Percent_White + Percent_BA_or_higher + Percent_unemployed + Per_capita_income_dollars + (1|Region) + (1|Year)"

formula_h_m <- "Hate_crime_per_100K ~ UV_Irradiance + PM25 + Median_age_years + Percent_Male + Percent_White + Percent_BA_or_higher + Percent_unemployed + Per_capita_income_dollars + (1|Region) + (1|Year)"

model_v_m <- lmer(formula_v_m, data = data)
model_p_m <- lmer(formula_p_m, data = data)
model_h_m <- lmer(formula_h_m, data = data)

class(model_v_m) <- "lmerMod"
class(model_p_m) <- "lmerMod"
class(model_h_m) <- "lmerMod"

############################################################

stargazer(model_v_m, model_p_m, model_h_m, 
          type="html", out="crimes_comaprison.html",
          #type="text",
          digits=2,
          title = "Mixed Effect Model Comparison in Crimes (per 100K Population)",
          header=FALSE, 
          covariate.labels=c('Sun (UV Irradiance)',
                             '$$PM_{2.5}$$', 
                             'Median Age', "Percent Male", "Percent White", 
                             "Educational Attainment",
                             "Percent Unemployment", "Per Capita Income"),
          dep.var.labels = c("Violent Crime", "Property Crime", "Hate Crime"),
          flip=TRUE, single.row = TRUE)





#############################
formula <- "Violent_crime_per_100K ~ UV_Irradiance + PM10 + Median_age_years + Percent_Male + Percent_White + Percent_BA_or_higher + Percent_unemployed + Per_capita_income_dollars + (1|Region) + (1|Year)"

model<- lmer(formula, data = data)
summary(model)
