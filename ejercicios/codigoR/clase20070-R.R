
## directorio de trabajo
setwd("~/Dropbox/maestria/maestria2012/ejercicios/paRsimonia")

## biblioteca a usar
library(phangorn)

## llear daos como phyllip
primates = read.phyDat("chars2.txt", format="phylip", type="DNA")
fix(primates)

## iniciar por matriz  de distancia
dm = dist.dna(as.DNAbin(primates))
fix(dm)

## con upgma
treeUPGMA = upgma(dm)

## o NJ
treeNJ = NJ(dm)


plot(treeUPGMA, main="UPGMA", cex = 0.8)
plot(treeNJ, "unrooted", main="NJ", cex = 0.5)

parsimony(treeUPGMA, primates)

## long del arbol
parsimony(treeNJ, primates)
fix(optParsUPGMA)
optParsUPGMA
optim.parsimony(treeUPGMA, primates)
optParsUPGMA = optim.parsimony(treeUPGMA, primates)
optim.parsimony(treeUPGMA, primates)
plot(optParsUPGMA, main="UPGMA", cex = 0.8)
optParsNJ = optim.parsimony(treeNJ, primates)
plot(optParsNJ, "unrooted", main="NJ", cex = 0.5)
fit_treeUPGMA = pml(unroot(treeUPGMA), data=primates)
fit_treeUPGMA_opt1 = optim.pml(fit_treeUPGMA)
plot(fit_treeUPGMA_opt1, main="optimized branches", cex = 0.8)
AIC(fit_treeUPGMA, fit_treeUPGMA_opt1)
fit_treeUPGMA_opt2 = optim.pml(fit_treeUPGMA, optNni=TRUE)
layout(matrix(c(1,2)), height=c(1,1))
plot(fit_treeUPGMA_opt1, cex = 0.8)
plot(fit_treeUPGMA_opt1, cex = 0.8)
layout(matrix(c(1,2)), height=c(1,1))
plot(fit_treeUPGMA_opt1, cex = 0.8)
dev.off()
plot(fit_treeUPGMA_opt1, cex = 0.8)
plot(fit_treeUPGMA_opt2, cex = 0.8)
AIC(fit_treeUPGMA_opt1, fit_treeUPGMA_opt2)
BIC(fit_treeUPGMA_opt1, fit_treeUPGMA_opt2)
2*(fit_treeUPGMA_opt1$logLik-fit_treeUPGMA_opt2$logLik)
library(phangorn)
primates = read.phyDat("chars2.txt", format="phylip", type="DNA")
write.nexus(primates,file="primates.nex")
write.nexus(primates,file="primates.nex")
write.nexus.data(primates,file="primates.nex")
write.nexus.data(primates,file="primates.nex",format="dna")
write.nexus.data(primates,file="primates.nex",format="dna")
primates
primates = read.phyDat("chars2.txt", format="phylip", type="DNA")
write.nexus.data(primates,file="primates.nex",format="dna")
?write.nexus.data
write.nexus.data(primates,file="primates.nex")
##
## análisis filogenetico
## usando R
##
##
## http://nunn.rc.fas.harvard.edu/groups/pica/wiki/a180c/22_Simple_parsimony_analysis_PHYLIP_and_R.html
##
## phangorn carga a APE
library(phangorn)
## lectura de datos alineados formato phylip
primates = read.phyDat("chars2.txt", format="phylip", type="DNA")
primates
library(ape)
getwd()
dir()
setwd("~/Dropbox/uis/20070/2014/clases/semana2")
setwd("~/Dropbox/uis/20070/2014/clases/semana2")
dir()
data=read.table("parrotfishes.txt",row.names=1,header=T)
a = 1
class(a)
a*2
a = 1
class(a)
a*2
setwd("~/Dropbox/uis/20070/2014/clases/semana2")
dir()
data=read.table("parrotfishes.txt",row.names=1,header=T)
help(read.table)
str(data)
dim(data)
data
fix(data)
data[1:10,]
data[,4]
data$log_gape
data[4,]
data[10,4]
mean(data)
mean(data,na.rm=T)
max(data)
data
mean(data,na.rm=TRUE)
mean(data,na.rm=T)
mean(data,na.rm=FALSE)
mean(data,na.rm=T)
mean(data,na.rm="TRUE")
max(data)
max(data,na.rm=T)
mean(data,na.rm=T)
sd(data)
summary(data)
mean(data$log_gape,na.rm=T)
max(data,na.rm=T)
sd(data$log_protrusion)
which(is.na(data)==T)
log_tail.clean=data$log_tail[!is.na(data$log_tail)]
#if you know the row numbers of NAs, you can remove them from the matrix
a=which(is.na(data$log_tail)==T)
a
data.clean=data[-a,]
data.clean=data[-a,]
a=which(is.na(data$log_tail)==T)
gape=10^data$log_gape
a=length(gape)
a
a <- 0.335
a
a = 1
class(a)
b<-c(1,2,3)
b<-c(1,2,4)
a+b
b+a
a*b
a/b
b/a
c<-c(11,22,33)
b
c
b+c
d<-c(100,5000)
e<-c(35:45)
e+d
e*d
b
c
b&&c
d
b&&d
#
# lo anterior, fue, digamos una pregunta que no pregunta
# siempre es true ya que no pregunte nada
#
#
# uso de O
#
b||d
b|d
d|b
a
b
a%in%b
1%in%b
3%in%b
b%in%a
a%/%b
paste(b,c, sep=" ")
tabla0<-table(b,c)
tabla0
table(c,b)
tabla.row<-matrix(c(b,c), ncol=2, byrow=TRUE)
tabla.row
tabla.col<-matrix(c(b,c), ncol=2, byrow=FALSE)
tabla.col
tabla.row1<-matrix(c(b,c), ncol=3, byrow=TRUE)
tabla.row1
t(tabla.row1)
a[1]
a[2]
c(1,2,4) + c(6,0,9,20,22)
x <- c(88,5,12,13)
x[1]
x[1:3]
x[-1]
x[-3]
x[:3]
x <- c(x[1:3],168,x[4])
x
x <- c(88,NA,12,168,13)
x
mean(x)
mean(x,na.rm=T)
sum(x)
median(x)
?sum
library(phangorn)
getwd()
setwd("~/Desktop/20070/2014/clases/semana2")
dir()
?read.phyDat
primates = read.phyDat("chars2.txt", format="phylip", type="DNA")
library(phangorn)
setwd("~/Desktop/20070/2014/clases/semana2")
primates = read.phyDat("chars2.txt", format="phylip", type="DNA")
primates
str(primates)
fix(primates)
dm = dist.dna(as.DNAbin(primates))
dm
upgma(dm)
upgma(dm)
treeUPGMA = upgma(dm)
treeNJ = NJ(dm)
plot(treeUPGMA, main="UPGMA", cex = 0.8)
plot(treeNJ, "unrooted", main="NJ", cex = 0.5)
parsimony(treeUPGMA, primates)
parsimony(treeNJ, primates)
optParsUPGMA =  optim.parsimony(treeUPGMA, primates)
optParsUPGMA-spr =  optim.parsimony(treeUPGMA, primates,rearrangements="SPR")
pratchet(primates, start=optParsUPGMA-spr, method="fitch", maxit=100, k=5, trace=1, all=FALSE,
rearrangements="SPR")
RAS = random.addition(primates, method="fitch")
CI(RAS, primates , cost = NULL)
RI(RAS, primates , cost = NULL)
read.phyDat("chars2.txt", format="phylip", type="DNA")
primates =   read.phyDat("chars2.txt", format="phylip", type="DNA")
?dist.dna
