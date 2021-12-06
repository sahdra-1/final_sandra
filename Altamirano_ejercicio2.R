##------ejercicio 2 
#escribe una funcion que a partir de dos secuencias FASTA, determine lo sig. 
#En cada uno de los casos debe mandar un mensaje 
#1 si las secuencias tienen o no el mismo tama?o 
#2 porcentaje de GC de cada una de ellas y las compare 
#3 Distancia de Hamming entre la primeras N letras, donde N es la longitud de la 
#secuencia m?s peque?a 

#Creo una funcion para calcular el porcentaje de GC en una secuencia, para despues poder a?adirla 
# a una funcion m?s grande. 

gc<- function(x){dinucleotideFrequency(x)["GC"] *100 / length(x)}  
gc(v1)
prob2<- function(x,y) ##determino que esta funcion necesita dos objetos para operar 
{ 
  if (length(x)==length(y))
  {cat ("Las secuencias tienen el mismo tama?o, ")
  }else
  { cat("Las secuencias no son del mismo tama?o, ") #le digo a R que me de dos mensajes diferentes si 
    #las secuencias tienen o no la misma longitud, usando condicionales if else 
  }
  diferencias<- 0
  for (i in 1:length(y)) {
    if(x[i]!= y[i])
      diferencias<- diferencias+1
  }
  cat("su distancia de Hamming es: ")
  cat(diferencias/length(x)) ##con esta funcion comparo cada uno de los elementos de las secuencias 
  #y una vez encontradas todas sus diferencias se dividen entre la longitud de la secuencia 1, para arrojar 
  #la distancia de hamming, con un mensaje 
  cat(". El % de GC de la secuencia 1 es:")
  cat(gc(x))
  cat(". El % de GC de la secuencia 2 es:") 
  cat (gc(y)) ##anexo la funcion creada para % de GC y a?ado el mensaje en R con el comandd "cat"
}
prob2(v1,v2) #Puedo aplicar esta funcion a cualquier par de secuencias 


