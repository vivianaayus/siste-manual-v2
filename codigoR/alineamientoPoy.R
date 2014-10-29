## leer biblioteca
library(ape)

## lectura de datos como fasta
alineamiento<-read.FASTA(file="alinaeamiento.fas")


## lectura como Matriz
alinamatriz<-read.dna("alinaeamiento.fas",format = "fasta",as.character=T)


## hago un vector de las dimensiones de las filas
x <- rep("#",17)
## inserto el vector
matrizinser<-cbind(alinamatriz[,1:100],x,alinamatriz[,101:600],x,alinamatriz[,601:1005])

## quito el nombre de las columnas (x)
colnames(matrizinser)<-NULL


## escribo la matrix como un fasta con el simbolo # incluido en la secuencia.
write.dna(matrizinser,"alinea", format="fasta" )
