library(ape)

library(phangorn)

#Abra la matriz de datos (texto simple) y asignela a un objeto.
datos <- read.table("Vertebrados.txt")

#Revise los nombres de las variables en la matriz
names(datos)

#Revise los nombres de las terminales en la matriz
row.names(datos)

#Abra la matriz de datos (Formato = phylip) y asignela a un objeto 
datos.Phylip <- read.phyDat("dna.phy", format="phylip", type="DNA")

#Escriba en formato Nexus la matriz anterior
write.nexus.data(datos.Phylip,file="dna.nex.nex")
