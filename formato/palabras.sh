#!/bin/bash          

# crea un archivo con las palabras usadas
# en los distitos archivos de latex


# version Junio 10 2014

cat *.tex > test.txt
 
# cambiar los espacios por new line

sed -i 's/\./ /g' test.txt 
sed -i 's/\:/ /g' test.txt 
sed -i 's/\;/ /g' test.txt 
sed -i 's/\,/ /g' test.txt 
sed -i s/\ /'\n'/g test.txt 


# eliminar las cosas de cmd etc

# eliminar las lineas de latex
grep -v "{" test.txt > test2.txt
grep -v "}" test2.txt > test.txt

# ordenar la primera linea
sort -nk 1 test.txt > test2.txt

# contar?
cat test2.txt | cut -f 1 | uniq  > palabras.txt

rm test2.txt test.txt
