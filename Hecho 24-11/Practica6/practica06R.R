library(ape)
library(phangorn)

#Leemos datos alineados en formato phylip

DNA <- read.dna("dna.phy")

#Listado de tamaño de las secuencias

table(unlist(lapply(DNA, length)))

#Con phymltest probamos 28 modelos en phyml

modelo<-phymltest("dna.phy", format = "sequential", itree = NULL,exclude = NULL, execname = "phyml.exe", append = FALSE)

#Con print puede revisar los valores de AIC
print(modelo)

#Con summary puede tener un resumen de los valores del test jerarquico

summary(modelo)

#Grafique con 'plot' los valores de AIC

plot(modelo, main = 'test de modelos para ML, usando PhyML')
