######----- ejercicio 4 
#### dadas las dos secuencias del mismo tamaño encontrar un score de alineamiento
#secuencias del mismo tamaño encontrar entre ella si coinciden dos nucleótidos entre ellas sumar un punto al 
#score y si difieren restar -1, 
library(BiocManager)
library(Biostrings)
###### generar dos secuencia de igual tamaño

secone <-DNAString("AGTTAATGGT")
sectu <- DNAString("ATTGGATGTG")
secone
sectu

####función 

escore_g <-function(secone,sectu){
  g <- readline (promt = paste("ver resultado score , escriba si "))
if(g=="si")
}
                 
                 