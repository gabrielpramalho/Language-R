# install.packages("readr")
# install.packages("data.table")
# install.packages("dplyr")
# install.packages("ggplot2", dependencies = TRUE)
# install.packages("scales")
# install.packages("magrittr")

library(readr)
library(dplyr)
library(ggplot2)
library(scales)
library(data.table)
library(magrittr)


df <- fread("C:/Users/Gabriel/Documents/R codes/datatran2020.csv")

rodoviasParana <- df %>% subset(df$uf == 'PR') 

View(rodoviasParana)

br369 <- rodoviasParana %>% subset(rodoviasParana$br == 369)

arredondar <- as.numeric(sub(",", ".",br369$km))

arredondar <- round(arredondar)

br369$km <- arredondar

View(br369)

contador <- table(br369$km)

View(contador)

km <- contador [contador == max(contador)]

## km 150
## 19 ocorrencias

