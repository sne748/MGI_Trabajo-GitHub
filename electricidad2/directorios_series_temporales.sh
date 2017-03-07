# Paso 0: Creación de los directorios donde se ubicarán las series temporales.
cd ~/electricidad
mkdir series_temporales
cd series_temporales

# Paso 1: Creación de los directorios de las CCAA
n=1;
max=19;
while [ "$n" -le "$max" ]; do
  if [ "$n" -le 9 ]; then
  n=0$n
  fi
  mkdir "$n"
  n=`expr "$n" + 1`;
done

mkdir Total

# Paso 2: Dentro de cada CCAA, creamos los directorios de las provincias
#cd 01
#mkdir ALMERIA,CADIZ,CORDOBA,GRANADA,HUELVA,JAEN,MALAGA,SEVILLA
#cd ..
#cd 02
#mkdir HUESCA,TERUEL,ZARAGOZA
#cd ..
#cd 03
#mkdir ASTURIAS
#cd ..
#cd 04
# ...............................
echo Creadas las carpetas de las CCAA

## ***Otro modo: Coger el identificador de cada provincia,
## ya que en los T_127P las provincias están ordenadas por su código.

cd 01
mkdir 04 11 14 18 21 23 29 41
cd ..
cd 02
mkdir 22 44 50
cd ..
cd 03
mkdir 33
cd ..
cd 04
mkdir 07
cd ..
cd 05
mkdir 35 38
cd ..
cd 06
mkdir 39
cd ..
cd 07
mkdir 05 09 24 34 37 40 42 47 49
cd ..
cd 08
mkdir 02 13 16 19 45
cd ..
cd 09
mkdir 08 17 25 43
cd ..
cd 10
mkdir 03 12 46
cd ..
cd 11
mkdir 06 10
cd ..
cd 12
mkdir 15 27 32 36
cd ..
cd 13
mkdir 28
cd ..
cd 14
mkdir 30
cd ..
cd 15
mkdir 31
cd ..
cd 16
mkdir 01 20 48
cd ..
cd 17
mkdir 26
cd ..
cd 18
mkdir 51
cd ..
cd 19
mkdir 52
cd ..

echo Creadas las carpetas de las Provincias


# Paso 3: Dentro de cada carpeta terminal, creamos los siguentes ficheros:
#COMBUSTIBLE_NUCLEAR.txt 
#CARBONES.txt 
#LIGNITOS.txt 
#FUEL.txt 
#GAS_NATURAL.txt 
#OTROS_COMBUSTIBLES.txt 
#TOTAL.txt


cd Total
touch COMBUSTIBLE_NUCLEAR.txt 
touch CARBONES.txt 
touch LIGNITOS.txt 
touch FUEL.txt 
touch GAS_NATURAL.txt 
touch OTROS_COMBUSTIBLES.txt 
touch TOTAL.txt
cd ..

for direct in ~/electricidad/series_temporales/**/*;
do

touch $direct/COMBUSTIBLE_NUCLEAR.txt 
touch $direct/CARBONES.txt 
touch $direct/LIGNITOS.txt 
touch $direct/FUEL.txt 
touch $direct/GAS_NATURAL.txt 
touch $direct/OTROS_COMBUSTIBLES.txt 
touch $direct/TOTAL.txt

echo Ficheros de texto de $direct creados.
done
