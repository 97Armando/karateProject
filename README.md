##### Proyecto de Automatizacion de pruebas API #####

Descripción

Este proyecto utiliza KARATE DSL para realizar pruebas API y escenarios de prueba basados en comportamientos.

1. Prerequisitos:

	- Maquina local con el sistema operativo Windows 10 o Windows validado en ambas versiones
	- IDE IntelliJ version 2023.3.2
	- Apache Maven version 4.0 (debe estar configurado en la variable de entorno del sistema)
	- JDK versión 11 (debe estar configurado en la variable de entorno del sistema)
	- Dependencias maven repository https://mvnrepository.com/ entre las principales
	    karate-junit5 ${version}
	    commons-collections4 4.4
	    karate-apache ${version}
	    cucumber-reporting 5.6.1
	    maven-compiler-plugin ${version}
	    maven-surefire-plugin ${version}
	  ${versión} la version de la dependencia se determinará dinámicamente en tiempo de compilación o construcción

2. Comandos de instalación

    - Instalacion mediante descarga de .zip con los binarios de maven y configuracion de variables de entorno

3. Instrucciones para ejecutar los test

    - Realizar la descarga o la clonacion del repositorio karateProject (https://github.com/97Armando/karateProject.git)
    - Descomprimir el archivo y abrir en el IDE
    - Verificar la instalacion de dependencias
    - Abrir el terminal del IDE y ejecutar el siguiente comando mvn clean test o buscar el archivo ManagemenTest y dar click en el boton RUN
    - Se puede validar los resultados en los informes generados en cucumber abriendo en un navegador web el archivo de la carpeta build/report-feature_xxxx.html

4. Información adicional
Instalar las dependencias puede tomar su tiempo, tambien se debe otorgar permisos firewall se lo ha realizado automatico.
Se tuvo inconveniente por compatibilidad de la version de java8 y las dependencias por lo que se opto por usar java 11.

5. Referencias:
https://github.com/karatelabs/karate




