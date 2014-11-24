library(ape)
library(phangorn)

#Lea el archivo con arboles arbol.r.tre use las instrucciones:

arbol <- read.tree("arbol.r.tre")
		
#Grafique el objeto arbol con longitud de ramas o como un filograma:
  
plot(arbol) 
plot.phylo(arbol)

#Para graficar el arbol sin incluir la longitud de ramas

plot(arbol,use.edge.length=FALSE)

#Para asignar las longitudes de las ramas como rotulos de los nodos y graficar

arbol$node.label<-arbol$edge.length

plot(arbol,show.node.label=TRUE)

#Para graficar el arbol con titulo de gr\'afica, colores de ramas y tipo cladograma

plot(arbol, type="cladogram",main="Arbol 1", edge.col=c("red","blue","cyan"))
		
#Para obtener la longitud del arbol, lea la matriz de datos \Datos{matriz.r.phy} a un objeto que se llame \Rfunc{MatrizDatos} y use la funci\'on \Rfunc{parsimony()}:

MatrizDatos <- read.phy("matriz.r.phy")		

parsimony(arbol,MatrizDatos)

