library(ape)
library(jrich)

#Asigne haga un busqueda en PAUP y guarde los arboles iniciales en formato Newick
#hsearch; savet file=arboles.phy format=Newick;

#Asigne los arboles a un objeto de nombre arboles.

arboles = read.tree("arboles.phy")

#Construya y grafique el consenso de la mayoria y el consenso de la mayoria pesado (Sharkey et al., 2013).

plot(wconsensus(arboles,collapse=F))

plot(wconsensus(arboles,collapse=T))
	