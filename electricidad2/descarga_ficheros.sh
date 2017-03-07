# Este script descarga todos los ficheros de la página web:


cd ~
mkdir electricidad
cd electricidad

# wget -r http://www.minetur.gob.es/energia/balances/Publicaciones/ElectricasMensuales/Paginas/ElectricasMensuales.aspx
# ¡Así no se hace! Así genera todas las subcarpetas una tras otra y al final solo deja un fichero.



#wget -r -np -l 0 -A zip http://www.minetur.gob.es/energia/balances/Publicaciones/ElectricasMensuales/Paginas/ElectricasMensuales.aspx

# wget -r http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2015/Enero_2015.zip
# Así se descarga un solo fichero.

#wget -r -np -l 1 -A zip http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2015/ NO FUNCIONA

# -nd: Sirve para que no se generen subcarpetas a cascaporro.

#wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2015/Enero_2015.zip 
# Así se descarga sin subdirectorios

## wget -r -l2 -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/
# ¡Descargaría demasiados ficheros!
#wget -r -l0 -nd -A.zip http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/






## ESPACIOS PARA LOS DATOS DE 2009, salvo diciembre


wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2006/Enero_2006.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2006/Febrero_2006.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2006/Marzo_2006.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2006/Abril_2006.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2006/Mayo_2006.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2006/Junio_2006.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2006/Julio_2006.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2006/Agosto_2006.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2006/Septiembre_2006.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2006/Octubre_2006.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2006/Noviembre_2006.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2006/Diciembre_2006.zip 

wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2007/Enero_2007.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2007/Febrero_2007.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2007/Marzo_2007.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2007/Abril_2007.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2007/Mayo_2007.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2007/Junio_2007.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2007/Julio_2007.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2007/Agosto_2007.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2007/Septiembre_2007.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2007/Octubre_2007.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2007/Noviembre_2007.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2007/Diciembre_2007.zip 

wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2008/Enero_2008.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2008/Febrero_2008.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2008/Marzo_2008.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2008/Abril_2008.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2008/Mayo_2008.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2008/Junio_2008.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2008/Julio_2008.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2008/Agosto_2008.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2008/Septiembre_2008.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2008/Octubre_2008.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2008/Noviembre_2008.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2008/Diciembre_2008.zip 

# Resulta que las carpetas zip entre enero y noviembre de 2009 tienen espacios en blanco en vez de barras bajas: Poner "%20" para que pueda leerlo git.
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2009/Enero%202009.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2009/Febrero%202009.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2009/Marzo%202009.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2009/Abril%202009.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2009/Mayo%202009.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2009/Junio%202009.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2009/Julio%202009.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2009/Agosto%202009.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2009/Septiembre%202009.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2009/Octubre%202009.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2009/Noviembre%202009.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2009/Diciembre_2009.zip 


wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2010/Enero_2010.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2010/Febrero_2010.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2010/Marzo_2010.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2010/Abril_2010.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2010/Mayo_2010.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2010/Junio_2010.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2010/Julio_2010.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2010/Agosto_2010.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2010/Septiembre_2010.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2010/Octubre_2010.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2010/Noviembre_2010.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2010/Diciembre_2010.zip 

wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2011/Enero_2011.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2011/Febrero_2011.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2011/Marzo_2011.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2011/Abril_2011.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2011/Mayo_2011.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2011/Junio_2011.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2011/Julio_2011.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2011/Agosto_2011.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2011/Septiembre_2011.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2011/Octubre_2011.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2011/Noviembre_2011.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2011/Diciembre_2011.zip 

wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2012/Enero_2012.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2012/Febrero_2012.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2012/Marzo_2012.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2012/Abril_2012.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2012/Mayo_2012.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2012/Junio_2012.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2012/Julio_2012.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2012/Agosto_2012.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2012/Septiembre_2012.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2012/Octubre_2012.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2012/Noviembre_2012.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2012/Diciembre_2012.zip 

wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2013/Enero_2013.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2013/Febrero_2013.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2013/Marzo_2013.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2013/Abril_2013.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2013/Mayo_2013.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2013/Junio_2013.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2013/Julio_2013.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2013/Agosto_2013.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2013/Septiembre_2013.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2013/Octubre_2013.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2013/Noviembre_2013.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2013/Diciembre_2013.zip 

wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2014/Enero_2014.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2014/Febrero_2014.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2014/Marzo_2014.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2014/Abril_2014.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2014/Mayo_2014.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2014/Junio_2014.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2014/Julio_2014.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2014/Agosto_2014.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2014/Septiembre_2014.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2014/Octubre_2014.zip 
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2014/Noviembre_2014.zip
wget -r -nd http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2014/Diciembre_2014.zip 

## Así solamente descarga los datos más reciente (2015)
wget -r -nd -l0 -A.zip http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/Paginas/ElectricasMensuales.aspx


# Sustituír los espacios en blanco de los ficheros de 2009 (Enero-Noviembre) por barras bajas.
for filename in *.zip;
do
touch "$filename"
mv "$filename" `echo "$filename"|sed 's/ /_/g'`
done
