
 #COMO CLIENTE DEL BANCO SUPERVIELLE
 #NECESITO GENERAR MI CLAVE
 #PARA PODER REGISTRARME EN LA APP MOBILE
 
Feature: Generar una clave para la aplicación Mobile de Supervielle

Background: 
	Given me encuentro en la pantalla de Clave de la app Mobile

@smoke @regresion	
Scenario Outline: Generación de Clave de Usuario <Clave_Usuario> 
	When se ingresa una Clave de Usuario <Clave_Usuario>
	And el campo de Confirmación de Clave cambia su estado <Estado> 
	And se ingresa la confirmación <Confirmación_Clave>
	And se obtiene como consecuencia un estado <Estado_Botón> 
	And se realiza un acción <Acción>
	Then se recepciona una Pantalla <Resultado_Obtenido>
	
Examples:
	|Clave_Usuario |Estado			|Confirmación_Clave	  |Estado_Botón							 		 |Acción	    |Resultado_Obtenido						|
	|Prueba00	     |HABILITADO		|Prueba00			      |Se habilita el botón "Continuar" 			     |Click		|Pantalla_Ingreso_Correo_Electrónico	|
	|PRUEBA00	     |HABILITADO		|PRUEBA00			      |Se habilita el botón "Continuar" 			     |Click		|Pantalla_Ingreso_Correo_Electrónico	|
	|PRUEBA_00	 |HABILITADO		|PRUEBA_00			  |Se habilita el botón "Continuar" 			     |Click		|Pantalla_Ingreso_Correo_Electrónico	|
	|PRUEBA-00	 |HABILITADO		|PRUEBA-00		      |Se habilita el botón "Continuar" 			     |Click		|Pantalla_Ingreso_Correo_Electrónico	|
	|PRUEBA.00     |HABILITADO		|PRUEBA.00			  |Se habilita el botón "Continuar" 			     |Click		|Pantalla_Ingreso_Correo_Electrónico	|
	|Prueba00	     |HABILITADO		|prueba00			      |No se habilita el botón "Continuar"			 |			    |											| # no son los mismos valores en ambos campos (Key sensitive)	
	|Prueba00	     |HABILITADO		|PRUEBA00			      |No se habilita el botón "Continuar"			 |				|											| # no son los mismos valores en ambos campos (Key sensitive)
	|PRUEBA00	     |HABILITADO		|prueba00			      |No se habilita el botón "Continuar"			 |				|											| # no son los mismos valores en ambos campos (Key sensitive)
	|PRUEBA00	     |HABILITADO		|Prueba00			      |No se habilita el botón "Continuar"			 |				|											| # no son los mismos valores en ambos campos (Key sensitive)
	|Prueba00	     |HABILITADO		|Prueba01			      |No se habilita el botón "Continuar"			 |				|											| # no son los mismos valores en ambos campos
	|Prueba0	     |NO HABILITADO	|				     	  |No se habilita el campo "Confirmá tu usuario"  |				|											| # no se ingresó la cantidad mínima de números requeridos
	|32836436	     |NO HABILITADO	|					      |No se habilita el campo "Confirmá tu usuario"  |				|											| # no se ingresó letras
	|pruebass	     |NO HABILITADO	|					      |No se habilita el campo "Confirmá tu usuario"  |				|											| # no se ingresó números
	|prueba0	     |NO HABILITADO	|					      |No se habilita el campo "Confirmá tu usuario"  |				|											| # no se ingresó una mayúscula	
	|Caso000	     |NO HABILITADO	|					      |No se habilita el campo "Confirmá tu usuario"  |				|											| # no se ingresó la cantidad mínima de caracteres
	|prueba 00	     |NO HABILITADO	|		      		      |No se habilita el campo "Confirmá tu usuario"  |				|											| # no se permite el uso de espacios
	|prueba00  	 |NO HABILITADO	|		      		      |No se habilita el campo "Confirmá tu usuario"  |				|											| # no se permite el uso de espacios (posterior al nombre de usuario)
	|prueba00	     |NO HABILITADO	|		      		      |No se habilita el campo "Confirmá tu usuario"  |				|											| # no se permite el uso de espacios (anterior al nombre de usuario)
	
		
	# ---------- CLAVE ------------
	# Debe contener 2 números
	# Debe tener una mayúscula	
	# Longitud: entre 8 y 14 caracteres
	# Puede aceptar estos caracteres especiales: _  -  .
	# Posee key sensitive: campo clave y campo confirmación de clave deben ser iguales