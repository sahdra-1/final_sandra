##-------examen final Altamirano díaz sandra---------
####-----problema uno, distancias hamming----#####
library(BiocManager)
library(Biostrings)

secuencias<- c("insulina.fasta")
secuencias<- readAAStringSet(secuencias)

v1<-(secuencias$`NP_001123565.1 insulin precursor [Canis lupus familiaris]`)
v2<-(secuencias$`NP_000198.1 insulin preproprotein [Homo sapiens]`)
v3<-(secuencias$`NP_001008996.1 insulin preproprotein [Pan troglodytes]`)
v4<-(secuencias$`NP_062003.1 insulin-2 preproprotein [Rattus norvegicus]`)
v5<-(secuencias$`NP_001172013.1 insulin-2 preproprotein [Mus musculus]`)


#### creo una funcion que me de la distancia de hamming comparando un par de secuencias,

distancia2<- function(x,y){ 
  diferencias<- 0
  for (i in 1:length(y)) {
    if(x[i]!= y[i]){
      diferencias<- diferencias+1
    }
  }
  return(diferencias/length(x))
}
distancia2(v1,v1)## la respuesta debe ser 0 ya que son la misma secuencia 


library(gtools)
#Ahora construire una matriz de distancias a partir de la funcion anterior.
###Declaro mi matriz
n <- 5
Matriz_Dist <- matrix(rep(0,25), nrow =n, ncol= n)
Matriz_Dist 
colnames(Matriz_Dist)<- c("v1", "v2", "v3", "v4", "v5")
row.names(Matriz_Dist)<- c("v1", "v2", "v3", "v4", "v5") #le cambio los nombres para que 
#la matriz quede m?s clara 
# utilice un ciclo for para llenar la matriz columna por columna, de manera manual 
for(i in 1:n) {
  B_COLUMNA <- c(distancia2(v1,v1),distancia2(v1,v2),distancia2(v1,v3),distancia2(v1,v4),
                 distancia2(v1,v5))
  Matriz_Dist[, i] <- B_COLUMNA
  for(i in 2:n){
    B_COLUMNA <- c(distancia2(v1,v2),distancia2(v2,v2),distancia2(v2,v3),distancia2(v2,v4),
                   distancia2(v2,v5))
    Matriz_Dist[, i] <- B_COLUMNA
    
    for(i in 3:n) {
      B_COLUMNA <- c(distancia2(v1,v3),distancia2(v3,v2),distancia2(v3,v3),distancia2(v3,v4),
                     distancia2(v3,v5))
    }
    for(i in 4:n) {
      B_COLUMNA <- c(distancia2(v1,v4),distancia2(v4,v2),distancia2(v4,v3),distancia2(v4,v4),
                     distancia2(v4,v5))}
    for(i in n:n) {
      B_COLUMNA <- c(distancia2(v1,v5),distancia2(v5,v2),distancia2(v5,v3),distancia2(v5,v4),
                     distancia2(v5,v5))}  
  }
}
Matriz_Dist