 #COMO CLIENTE DEL BANCO SUPERVIELLE
 #NECESITO GENERAR MI USUARIO
 #PARA PODER REGISTRARME EN LA APP MOBILE

 Feature: Generar un Nuevo Usuario para la aplicación Mobile de Supervielle

   Background:
     Given me encuentro en la pantalla de Usuario de la app Mobile

   @smoke @regresion
   Scenario Outline: Generación del Nombre del Usuario <Nombre_Usuario>
     When se ingresa un nombre de Usuario <Nombre_Usuario>
     And el campo de Confirmación de Usuario cambia su estado <Estado>
     And se ingresa la confirmación <Confirmación_Usuario>
     And se obtiene como consecuencia un estado <Estado_Botón>
     And se realiza un acción <Acción>
     Then se recepciona una Pantalla <Resultado_Obtenido>

     Examples:
       | Nombre_Usuario | Estado        | Confirmación_Usuario | Estado_Botón                                  | Acción | Resultado_Obtenido            |
       | natalia0       | HABILITADO    | natalia0             | Se habilita el botón "Continuar"              | click  | Pantalla Generación_Clave     |
       | natalia0       | HABILITADO    | Natalia0             | Se habilita el botón "Continuar"              | click  | Pantalla Generación_Clave     |
       | natalia0       | HABILITADO    | NATALIA0             | Se habilita el botón "Continuar"              | click  | Pantalla Generación_Clave     |
       | Natalia0       | HABILITADO    | natalia0             | Se habilita el botón "Continuar"              | click  | Pantalla Generación_Clave     |
       | Natalia0       | HABILITADO    | Natalia0             | Se habilita el botón "Continuar"              | click  | Pantalla Generación_Clave     |
       | Natalia0       | HABILITADO    | NATALIA0             | Se habilita el botón "Continuar"              | click  | Pantalla Generación_Clave     |
       | NATALIA0       | HABILITADO    | natalia0             | Se habilita el botón "Continuar"              | click  | Pantalla Generación_Clave     |
       | NATALIA0       | HABILITADO    | Natalia0             | Se habilita el botón "Continuar"              | click  | Pantalla Generación_Clave     |
       | NATALIA0       | HABILITADO    | NATALIA0             | Se habilita el botón "Continuar"              | click  | Pantalla Generación_Clave     |
       | maylen01       | HABILITADO    | maylen01             | Se habilita el botón "Continuar"              | click  | Pantalla Usuario_Ya_Utilizado |
       | natalia0       | HABILITADO    | natalia1             | No se habilita el botón "Continuar"           |        |                               | #no son los mismos valores en ambos campos
       | natalia        | NO HABILITADO |                      | No se habilita el campo "Confirmá tu usuario" |        |                               | #no contiene números ni supera la cantidad mínima de caracteres requeridos (8)
       | natali0        | NO HABILITADO |                      | No se habilita el campo "Confirmá tu usuario" |        |                               | #no se ingresó la cantidad mínima de caracteres
       | nataliag       | NO HABILITADO |                      | No se habilita el campo "Confirmá tu usuario" |        |                               | #no se ingresó números
       | 32836436       | NO HABILITADO |                      | No se habilita el campo "Confirmá tu usuario" |        |                               | #no se ingresó letras
       | natalia00-     | NO HABILITADO |                      | No se habilita el campo "Confirmá tu usuario" |        |                               | #no se acepta el ingreso de caracteres especiales
       | natalia00_     | NO HABILITADO |                      | No se habilita el campo "Confirmá tu usuario" |        |                               | #no se acepta el ingreso de caracteres especiales
       | natalia00.     | NO HABILITADO |                      | No se habilita el campo "Confirmá tu usuario" |        |                               | #no se acepta el ingreso de caracteres especiales
       | natalia 00     | NO HABILITADO |                      | No se habilita el campo "Confirmá tu usuario" |        |                               | #no se permite el uso de espacios
       | natalia00      | NO HABILITADO |                      | No se habilita el campo "Confirmá tu usuario" |        |                               | #no se permite el uso de espacios (posterior al nombre de usuario)
       | natalia00      | NO HABILITADO |                      | No se habilita el campo "Confirmá tu usuario" |        |                               | #no se permite el uso de espacios (anterior al nombre de usuario)
	
	
	# ---------- USUARIO ------------
	# Puede contener letras y números
	# Longitud: entre 8 y 15 caracteres
	# NO acepta caracteres especiales
	# NO key sentitive en la generación y confirmación (PUEDEN EXISTIR DIFERENCIAS de mayúsculas y minúsculas entre dichos campos pero respetando el nombre de usuario en ambos campos)
	# -----> SE DEBEN TOMAR COMO EXAMPLE LOS PRIMEROS 9 EXAMPLES? XQ HACEN REFERENCIA A QUE LOS CAMPOS NO SON KEY SENSITIVE 