## Último fichero .sh del trabajo de las series temporales.

# Supongamos que los ficheros .sh se cargan en el siguiente orden:
# 1. descarga_ficheros.sh: Descarga todos los ficheros .zip de la web y renombra aquellos donde hay un espacio en vez de una barra baja.
# 2. descomprime_los_zip.sh: Crea carpetas descomprimidas de igual nombre que las comprimidas (salvo por la extensión)
# 3. directorios_series_temporales.sh: Crea las carpetas, subcarpetas y ficheros de texto plano (vacíos) con los que vamos a trabajar.
# 4. T_127P.sh: Copia los ficheros de la forma T_127P*.txt a una nueva carpeta ~/electricidad/T_127P. De estos ficheros se obtendrá la
#				información necesaria para escribir las series temporales.
# 5. Crear_referencias.sh : Crea un fichero de texto en T_127P* donde relaciona cada código con su respectiva provincia
# 6. ultimo.sh : Script que copia los valores de producción de energía termoeléctrica por provincias junto con la fecha dada en los nuevos ficheros de texto.

# Idea del script ultimo.sh: Se considera un bucle anidado: En la parte externa, los ficheros *.txt a leer, y en la parte interna,
# la provincia en la que nos encontramos. En el interior del segundo bucle se van añadiendo datos a los distintos ficheros *.txt

cd ~/electricidad

##########################################
## SUSTITUÍR POR 2 BUCLES while anidados desde 06 hasta 15 (externo); desde 01 hasta 12 (interno)
#for mensual in ./T_127P/*.txt; 
#do
	##########Leer las primeras líneas del fichero y saltárselas
#	echo $mensual
#	mens=${mensual##*/}		# Quito el PATH
#	mens=${mens%.txt}		# Quito la EXTENSIÓN
#	mens=${mens:7}			# Quito los 7 primeros caracteres "T_127P_"
#	anua2=${mens:2}			#				  quito los 2 primeros caracteres, que corresponden al mes
#	anual=20${mens:2}		# Pongo un '20' y quito los 2 primeros caracteres, que corresponden al mes
#	mens=${mens::2}		# Quito los dos últimos caracteres, que van asociados al año.
	
	
#	echo Año $anual
#	echo Mes $mens
	# -----------------------------------------------------------
#done	
###########################################
# Bucle 1: Por años.
j=6		#Los años van desde 06 hasta 15
while [ "$j" -le 15 ]; do

	if [ "$j" -le 9 ]; then # Añadir un cero a los años 2006,2007,2008,2009
		j=0$j;
	fi
	echo Año 20$j
	
	#Bucle 2: Por meses.
	k=1	#Los meses van desde 01 hasta 12
	while [ "$k" -le 12 ]; do

		if [ "$k" -le 9 ]; then # Añadir un cero a los años 2006,2007,2008,2009
			k=0$k;
		fi
		echo Año 20$j Mes $k
	
	
	
	
	
		#Bucle 3: Por provincias
		m=1;     #Contador de provincia (Añadir un 0 hasta que tome el valor 10)
		max=52;  #Número de provincias, incluyendo Ceuta y Melilla
		while [ "$m" -le "$max" ]; do
			if [ "$m" -le 9 ]; then
				m=0$m;
			fi
			########## Accedo al directorio ~/electricidad/series_temporales/*/m (o bien 0m)
			V=$(cat ~/electricidad/T_127P/CODES.txt | grep $m)
			V=${V:3}		#Quito los 3 primeros caracteres codigo+espacio

			#if [ "$m" -eq 15 ]; then  # Caso particular LA CORUÑA. Caracteres extraÑos
			#	V=${V:: -2}		#Quito los 2 últimos caracteres -->LA CORU			
			#fi


			#echo $V
			cat ~/electricidad/T_127P/T_127P_$k$j.txt | grep "$V" ## Mostrar por pantalla la línea
			
			VV="$(cat ~/electricidad/T_127P/T_127P_$k$j.txt | grep "$V")" ##


			

			VNUC=$(echo "$VV" | head -c 32 | tail -c 11 | tr -d '.')
			VCAR=$(echo "$VV" | head -c 45 | tail -c 11 | tr -d '.')
			VLIG=$(echo "$VV" | head -c 58 | tail -c 11 | tr -d '.')
			VFUE=$(echo "$VV" | head -c 71 | tail -c 11 | tr -d '.')
			VGAS=$(echo "$VV" | head -c 84 | tail -c 11 | tr -d '.')
			VOTR=$(echo "$VV" | head -c 97 | tail -c 11 | tr -d '.')
			VTOT=$(echo "$VV" | head -c 112 | tail -c 13 | tr -d '.')
			
			
			#echo $VV
			#echo $VNUC
			#echo $VCAR
			#echo $VLIG
			#echo $VFUE
			#echo $VGAS
			#echo $VOTR
			#echo $VTOT

			
			#BUCLE 4:  Busco carpetas de la forma:		~/electricidad/series_temporales/*/m   (y ahí escribo los datos).
			for carpeta in ~/electricidad/series_temporales/*/$m/; do
				#echo $carpeta
				
				echo "20$j$k    $VNUC "$'\r\n'>>$carpeta/COMBUSTIBLE_NUCLEAR.txt
				######### Escribo en COMBUSTIBLE_NUCLEAR.txt la fecha (variable mensual del bucle externo) + tabulador + dato de producción eléctrica, quitando los '.'
				echo "20$j$k    $VCAR "$'\r\n'>>$carpeta/CARBONES.txt
				######### Escribo en CARBONES.txt la fecha (variable mensual del bucle externo) + tabulador + dato de producción eléctrica, quitando los '.'
				echo "20$j$k    $VLIG "$'\r\n'>>$carpeta/LIGNITOS.txt
				######### Escribo en LIGNITOS.txt la fecha (variable mensual del bucle externo) + tabulador + dato de producción eléctrica, quitando los '.'
				echo "20$j$k    $VFUE "$'\r\n'>>$carpeta/FUEL.txt
				######### Escribo en FUEL.txt la fecha (variable mensual del bucle externo) + tabulador + dato de producción eléctrica, quitando los '.'
				echo "20$j$k    $VGAS "$'\r\n'>>$carpeta/GAS_NATURAL.txt
				######### Escribo en GAS_NATURAL.txt la fecha (variable mensual del bucle externo) + tabulador + dato de producción eléctrica, quitando los '.'
				echo "20$j$k    $VOTR "$'\r\n'>>$carpeta/OTROS_COMBUSTIBLES.txt
				######### Escribo en OTROS_COMBUSTIBLES.txt la fecha (variable mensual del bucle externo) + tabulador + dato de producción eléctrica, quitando los '.'
				echo "20$j$k    $VTOT "$'\r\n'>>$carpeta/TOTAL.txt
				######### Escribo en TOTAL.txt la fecha (variable mensual del bucle externo) + tabulador + dato de producción eléctrica, quitando los '.'
			done

			#echo Número $m
			m=`expr "$m" + 1`;	#Aumento el índice m en 1, pasando así a la siguiente provincia.
		
		done #Final del bucle 3
		cat ~/electricidad/T_127P/T_127P_$k$j.txt | grep "T O T A L"   #Mostrar por pantalla la línea
		VV="$(cat ~/electricidad/T_127P/T_127P_$k$j.txt | grep "T O T A L")"
		VNUC=$(echo "$VV" | head -c 32 | tail -c 11 | tr -d '.')
		VCAR=$(echo "$VV" | head -c 45 | tail -c 11 | tr -d '.')
		VLIG=$(echo "$VV" | head -c 58 | tail -c 11 | tr -d '.')
		VFUE=$(echo "$VV" | head -c 71 | tail -c 11 | tr -d '.')
		VGAS=$(echo "$VV" | head -c 84 | tail -c 11 | tr -d '.')
		VOTR=$(echo "$VV" | head -c 97 | tail -c 11 | tr -d '.')
		VTOT=$(echo "$VV" | head -c 112 | tail -c 13 | tr -d '.')

		#echo $VV									#Problema: Así solo deja un espacio
		#echo $VNUC
		#echo $VCAR
		#echo $VLIG
		#echo $VFUE
		#echo $VGAS
		#echo $VOTR
		#echo $VTOT

		
		
		echo -e "20$j$k    $VNUC "$'\r\n'>>~/electricidad/series_temporales/Total/COMBUSTIBLE_NUCLEAR.txt
		########## Escribo en COMBUSTIBLE_NUCLEAR.txt la fecha (variable mensual del bucle externo) + tabulador + dato de producción eléctrica, quitando los '.'
		echo -e "20$j$k    $VCAR "$'\r\n'>>~/electricidad/series_temporales/Total/CARBONES.txt
		########## Escribo en CARBONES.txt la fecha (variable mensual del bucle externo) + tabulador + dato de producción eléctrica, quitando los '.'
		echo -e "20$j$k    $VLIG "$'\r\n'>>~/electricidad/series_temporales/Total/LIGNITOS.txt
		########## Escribo en LIGNITOS.txt la fecha (variable mensual del bucle externo) + tabulador + dato de producción eléctrica, quitando los '.'
		echo -e "20$j$k    $VFUE "$'\r\n'>>~/electricidad/series_temporales/Total/FUEL.txt
		########## Escribo en FUEL.txt la fecha (variable mensual del bucle externo) + tabulador + dato de producción eléctrica, quitando los '.'
		echo -e "20$j$k    $VGAS "$'\r\n'>>~/electricidad/series_temporales/Total/GAS_NATURAL.txt
		########## Escribo en GAS_NATURAL.txt la fecha (variable mensual del bucle externo) + tabulador + dato de producción eléctrica, quitando los '.'
		echo -e "20$j$k    $VOTR "$'\r\n'>>~/electricidad/series_temporales/Total/OTROS_COMBUSTIBLES.txt
		########## Escribo en OTROS_COMBUSTIBLES.txt la fecha (variable mensual del bucle externo) + tabulador + dato de producción eléctrica, quitando los '.'
		echo -e "20$j$k    $VTOT "$'\r\n'>>~/electricidad/series_temporales/Total/TOTAL.txt
		########## Escribo en TOTAL.txt la fecha (variable mensual del bucle externo) + tabulador + dato de producción eléctrica, quitando los '.'

		k=`expr "$k" + 1`
	done #Final del bucle 2

	j=`expr "$j" + 1`
done	#Final del bucle 1

