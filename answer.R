# Você deverá criar um modelo para prever a nota da prova de matemática de quem 
# participou do ENEM 2016.   NU_NOTA_MT

# Importando bibliotecas
library(tidyr)
library(readxl)
library(ggplot2)
library(dplyr)
library(rlang)

# Importando os dataset
base <- read.csv('testfiles/train.csv')
teste <- read.csv('testfiles/test.csv')
dicion <- read_excel('dicionario-de-dados/Dicionario_Microdados_Enem_2016.xlsx')

summary(base)
ggplot(data = base) +
  geom_bar(mapping = aes(x = NU_NOTA_MT))

base %>%
  count(NU_NOTA_MT)
df <- base[,c()]

#removendo colunas
base$X <- NULL 
base$NU_ANO <- NULL
base$NU_INSCRICAO <- NULL
base$NU_ANO <-  NULL
base$CO_MUNICIPIO_RESIDENCIA <- NULL
base$NO_MUNICIPIO_RESIDENCIA <- NULL
base$CO_UF_RESIDENCIA <- NULL
base$SG_UF_RESIDENCIA <- NULL
base$CO_MUNICIPIO_NASCIMENTO <- NULL
base$NO_MUNICIPIO_NASCIMENTO <- NULL
base$CO_UF_NASCIMENTO <- NULL
base$SG_UF_NASCIMENTO <- NULL
base$CO_ESCOLA <- NULL
base$CO_MUNICIPIO_ESC <- NULL
base$NO_MUNICIPIO_ESC <- NULL
base$CO_UF_ESC <- NULL
base$SG_UF_ESC <- NULL
base$TP_DEPENDENCIA_ADM_ESC <- NULL
base$NO_ENTIDADE_CERTIFICACAO <- NULL
base$CO_UF_ENTIDADE_CERTIFICACAO <- NULL
base$SG_UF_ENTIDADE_CERTIFICACAO <- NULL
base$CO_MUNICIPIO_PROVA <- NULL
base$NO_MUNICIPIO_PROVA <- NULL
base$CO_UF_PROVA <- NULL
base$CO_PROVA_CN <- NULL
base$CO_PROVA_CH <- NULL
base$CO_PROVA_LC <- NULL
base$CO_PROVA_MT <- NULL
base$TX_RESPOSTAS_CN <- NULL
base$TX_RESPOSTAS_CH <- NULL
base$TX_RESPOSTAS_LC <- NULL
base$TX_RESPOSTAS_MT <- NULL
base$TX_GABARITO_CN <- NULL
base$TX_GABARITO_CH <- NULL
base$TX_GABARITO_LC <- NULL
base$TX_GABARITO_MT <- NULL
base <- base[,c(-83:-132)]  
View(base$NU_NOTA_MT)

# Ordenando para o final.
df <- select(base, - NU_NOTA_MT, everything() )
View(df)








