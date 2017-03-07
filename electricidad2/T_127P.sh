# Fichero T_127P: Copia todos los ficheros de la forma T_127P*.txt a la carpeta T_127P
# De estos ficheros se obtendrá la información necesaria para hacer las series temporales.

cd ~/electricidad

##ls ./*/*/[T][_][1][2][7][P]*.txt # Este comando muestra todos los ficheros a copiar

mkdir T_127P

#for fichero in /*/*/[T][_][1][2][7][P]*.txt; NO FUNCIONA
for fichero in ./*/*/[T][_][1][2][7][P]*.txt;

do
echo $fichero
#Copiar al directorio ~/electricidad/T_127P
cp [-T] $fichero  ~/electricidad/T_127P
#cp -T $fichero  ~/electricidad/T_127P

done

echo Faltan los casos particulares de 2011


#Los ficheros de una parte del AÑO 2011 tienen un nombre ligeramente diferente Y NO SIGUEN NINGUNA REGLA ESPECÍFICA. Las carpetas tienen ESPACIOS EN BLANCO

cp ~/electricidad/Enero_2011/'enero 2011'/T_127P_0111.txt  ~/electricidad/T_127P
cp ~/electricidad/Febrero_2011/'febrero 2011'/T_127P_022011.txt  ~/electricidad/T_127P
cp ~/electricidad/Marzo_2011/'marzo 2011'/T_127P_03011.txt ~/electricidad/T_127P
cp ~/electricidad/Abril_2011/'abril 2011'/T_127P_04011.txt  ~/electricidad/T_127P
cp ~/electricidad/Mayo_2011/'mayo 2011'/T_127P_05011.txt  ~/electricidad/T_127P
cp ~/electricidad/Junio_2011/'junio 2011'/T_127P_06011.txt  ~/electricidad/T_127P
cp ~/electricidad/Julio_2011/'julio 2011'/T_127P_07011.txt  ~/electricidad/T_127P

# Renombro esos ficheros
cd ~/electricidad/T_127P
mv ./T_127P_022011.txt T_127P_0211.txt
mv ./T_127P_03011.txt T_127P_0311.txt
mv ./T_127P_04011.txt T_127P_0411.txt
mv ./T_127P_05011.txt T_127P_0511.txt
mv ./T_127P_06011.txt T_127P_0611.txt
mv ./T_127P_07011.txt T_127P_0711.txt


echo Finalizado