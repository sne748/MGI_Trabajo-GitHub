cd ~/electricidad
#for filename in $filedir.zip;
for filename in *.zip;
do
#Así no funciona bien: unzip $filename -d \*

#unzip $filename -d $filename[^.zip] 
# Así funciona, pero mal ya que renombra los nuevos directorios como *.zip[^.zip]

#unzip $filename -d * #Así da el nombre de la carpeta, pero con un .zip
#Already exists --> Así no funciona

#unzip $filename -d ["$filename[^.zip]"] #Sin el .zip
unzip $filename -d "${filename%.zip}" #Sin el .zip

# El tanto por ciento antecede el trozo de cadena a suprimir (en este caso, .zip)

done
