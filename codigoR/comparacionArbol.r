## bibliotecas

library(phangorn)

library(ape)


##
##  leear arboles
##
arbol1 <- read.tree("arbol1.tre")
arbol2 <- read.tree("arbol2.tre")

Equal <- unroot(arbol1)

dev.off()
par(mfrow = c(3, 1)) 
plot(Equal)
plot(arbol1)
plot(arbol2)

plot.phylo(arbol1,use.edge.length=T)

plot.phylo(arbol2,use.edge.length=T)


##
## metricas
##


##
## la funcion general 
##
all.equal(arbol1,arbol2)


##
## la misma pero para filogenia
##
all.equal.phylo(arbol1,arbol2)



##
## idem sin considerar long 
##
all.equal.phylo(arbol1,arbol2, use.edge.length=TRUE)

all.equal.phylo(arbol1,arbol2, use.edge.length=F)


##
## metricas entre arboles
##
treedist(Equal,arbol1)

treedist(Equal,arbol2)


## los dos arboles son muy parecidos
treedist(unroot(arbol1),unroot(arbol2))




##
## distancia topologica
##
dist.topo(arbol1,arbol2)


##
## RF
##
RF.dist(arbol1,arbol2)

RF.dist(unroot(arbol1),unroot(arbol2))



##
##
##

write.nexus(c(unroot(arbol1),unroot(arbol2)), file="nexus.tree")

##
## test de hipotesis
## http://www.brianomeara.info/tutorials/phylogenetics#hypothesis
##