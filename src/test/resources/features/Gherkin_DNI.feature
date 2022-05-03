 #COMO CLIENTE DEL BANCO SUPERVIELLE
 #NECESITO INGRESAR EL DNI EN LA APLICACION
 #PARA PODER ACCEDER A MI CUENTA

 Feature: Ingresar DNI en la aplicación Mobile de Supervielle

   Background:
   @smoke @regresion @Demo
   Scenario Outline: Ingreso DNI <DNI>
     Given me encuentro en la pantalla de DNI de la app Mobile en el <Ambiente>
     When se ingresa DNI <DNI> y se hace click en el botón "Continuar"
     Then la aplicación redirije a la pantalla <Pantalla>

     Examples:
       | DNI      | Pantalla                      | Ambiente |
       | 5176396  | ¿Qué tipo de documento tenés? | Desa    |
       | 95955879 | Comenzar                      | Desa    |
       | 30603747 | Ingresar                      | Desa    |
       | 37516796 | Ingresá la Clave de Canales   | Desa    |
       | 10203060 | No pudimos identificarte      | Desa    |
       #| 5176396  | ¿Qué tipo de documento tenés? | Test    |
       #| 95955879 | Comenzar                      | Test    |
       #| 30603747 | Ingresar                      | Test    |
       #| 37516796 | Ingresá la Clave de Canales   | Test    |
       #| 10203060 | No pudimos identificarte      | Test    |
	
#determinar si es LC o LE
#enrolamiento biométrico para registración en la app (se cambio el accesibility id por uno no personalizado)
#ingreso por Credenciales o Local (una vez registrado)
#bloqueo de Facephi o por Renaper
#cliente no registrado