
pacientes.hap <- read.csv("Dados/pacientes-hap.csv", sep=";", header=T)

colnames(pacientes.hap)

pacientes.hap$tratamento <- as.factor(pacientes.hap$tratamento)

levels(pacientes.hap$tratamento)

#1 - Piora clínica e morreram

total_pacientes <- nrow(pacientes.hap)

table(pacientes.hap$tratamento)

piora <- pacientes.hap$piora > 0
piora

obito <- pacientes.hap$obito > 0
obito

pacientes.piora.obito <- pacientes.hap[piora & obito,]
n_piora_obito <- nrow(pacientes.piora.obito)

percentual_obito_piora <- n_piora_obito / total_pacientes
percentual_obito_piora * 100



# 1. Calcular a frequência de distribuição de gênero na tabela
pacientes.hap$genero <- as.factor(pacientes.hap$genero)
table(pacientes.hap$genero)
total_pacientes

# 1. Calcular a média e desvio padrão da idade do tratamento com Iloprosta + Bosentana
pacientes.hap$tratamento <- as.factor(pacientes.hap$tratamento)
levels(pacientes.hap$tratamento)
iloprosta_bosentana <- pacientes.hap["tratamento"] == "Iloprosta + bosentana"
iloprosta_bosentana
mean(pacientes.hap[iloprosta_bosentana, "idade"], na.rm=T)
sd(pacientes.hap[iloprosta_bosentana, "idade"], na.rm=T)

# 1. Qual tratamento apresentou o maior percentual de piora clínica
total_por_tratamento <- table(pacientes.hap$tratamento)
piora_por_tratamento <- table(pacientes.hap$tratamento[pacientes.hap$piora == 1])
percentual_piora <- (piora_por_tratamento / total_por_tratamento) * 100
percentual_piora_ordenado <- sort(percentual_piora, decreasing = TRUE)
print(percentual_piora_ordenado)

# 1. Verificar o maior custo associado com um tratamento e a qual tratamento pertence
custos.hap = read.csv("Dados/custos-hap.csv", sep=";", header=T)
colnames(pacientes.hap)
colnames(custos.hap)
pacientes.hap.completo <- merge(pacientes.hap, custos.hap, by = "serial")
colnames(pacientes.hap.completo)
pacientes.hap.completo["updated_at.y"] = NULL

# Supondo que pacientes.hap.completo seja o seu dataframe e as colunas sejam "tratamento" e "valor_tratamento"
total_gasto_por_tratamento <- tapply(pacientes.hap.completo$valor, pacientes.hap.completo$tratamento, sum, na.rm = TRUE)

# Exibindo o resultado
print(sort(total_gasto_por_tratamento, decreasing = T))







































