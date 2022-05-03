 #COMO CLIENTE DEL BANCO SUPERVIELLE
 #NECESITO INGRESAR EL DNI EN LA APLICACION
 #PARA PODER ACCEDER A MI CUENTA

 Feature: Ingresar DNI en la aplicación Mobile de Supervielle

   Background:
     Given me encuentro en la pantalla de DNI de la app Mobile

   @smoke @regresion @Demo
   Scenario Outline: Ingreso DNI <DNI>
     When se ingresa DNI <DNI> y se hace click en el botón "Continuar"
     Then la aplicación redirije a la pantalla <Pantalla>

     Examples:
       | DNI      | Pantalla                      |
       | 5176396  | ¿Qué tipo de documento tenés? |
       | 95955879 | Comenzar                      |
       | 30603747 | Ingresar                      |
       | 32836436 | Ingresá la Clave de Canales   |
       | 10203060 | No pudimos identificarte      |
	
#determinar si es LC o LE
#enrolamiento biométrico para registración en la app (se cambio el accesibility id por uno no personalizado)
#ingreso por Credenciales o Local (una vez registrado)
#bloqueo de Facephi o por Renaper
#cliente no registrado