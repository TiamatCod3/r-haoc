y <- "Ola"

typeof(x)
x = 3
x/2
x = 3L
x / 2
z = T
as.numeric(z)
z = as.numeric(z)
z
x = as.logical(x)
x



x1 = 75 
x2 = 87
x3 = 68
x4 = 55
x5 = 27

media = (x1 + x2 + x3 + x4 + x5)/5

v1 = (x1 - media) ** 2
v2 = (x2 - media) ** 2
v3 = (x3 - media) ** 2
v4 = (x4 - media) ** 2
v5 = (x5 - media) ** 2



variancia = (v1+v2+v3+v4+v5)/5
variancia

desvio.padrao = variancia ** (1/2)
desvio.padrao

help(runif)


runif(n = 20, min = 1, max = 10)
?mean
numeros = c(1, 2, 3, NA)
numeros
mean(numeros, na.rm = T)

texto = "Aprendendo R e Manipulacao de Texto com exemplos de funcoes."
texto
contagem_anterior = nchar(texto)
contagem_anterior
help(gsub)
texto = tolower(texto)
texto = gsub("a", "", texto)
texto
nchar(texto)

vetor_numerico = c(2, 3, 5, 7, 2)
filtro_maior_3 = vetor_numerico > 3

vetor_numerico[filtro_maior_3]















