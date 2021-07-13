#!/bin/bash

#Se despliega a directorio /opt
cd /opt
#Se crea directorio llamado cylance 
mkdir cylance
#Se crea el archivo de config_defaults.txt
cd cylance
touch config_defaults.txt
#Se comienza a inyectar la informacion requerida
echo "Cual es el token?"
read token 
echo InstallToken=$token > config_defaults.txt
echo SelfProtectionLevel=2 >> config_defaults.txt
echo "Cual es el nombre de la zona?"
read zona
echo VenueZone=$zona >> config_defaults.txt
echo LogLevel=2 >> config_defaults.txt
echo "Procesando la informacion"
echo " "
echo "Comenzando con la instalacion del agente"
echo "En que ruta esta el agente?"
read ruta
echo "-----------------------------------------------"
ls $ruta   
echo "-----------------------------------------------"
cd $ruta
echo "Cual es el nombre del archivo?"
read nombre
yum install $nombre  
echo "Se esta instalando en $ruta, el nombre del archivo es $nombre"  
 
#yum install $nombre 

