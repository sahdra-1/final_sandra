#------ejercicio 3 ----------
#Usa funciones y ciclo while para pedirle al ususario una secuencia de 3 nucleotidos 
#y que genere 
#1 el aa correspondiente 
#2 la secuencia complementaria. 


prob3<- function(){
  seguir<- 1
  while (seguir == 1){
    obj1<- readline("Ingresa una secuencia de 3 nucle?tidos: ")
    obj1<- DNAStringSet(obj1) #leo la secuencia ingresada por el usuario como un DNAstring 
    ##para posteriormente poder generar el aa correspondiente con el comando "translate"
    
    message ("el aa correspondiente es :", translate(obj1)) 
    message ("  y su secuencia complementaria es: ", complement(obj1))
    seguir<- readline(prompt = "?Desea ingresar otra secuencia?, 1=SI, 0=NO ")
    seguir<- as.numeric(seguir)}
}
prob3()
