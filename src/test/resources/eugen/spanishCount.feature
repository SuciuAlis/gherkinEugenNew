Feature: Creacion de subcasos con sla manual desde canales prioritarios PYME unidad de negocio PYME

  Background: Acceder a Salesforce
    Given Me encuentro en la pagina inicio de salesforce
    When Inicio sesion con "usuario" y "password" validos en ambiente "qaminorco"
    Then Se logra ver la vista ejecutivo en la pagina de SF

  Scenario Outline: Crear Subcaso PYME departamento Centro atencion tarjetas CAT
    Given Inicio sesion con en el usuario en SF "<usuario>"
    When Busco y selecciono el "<numeroCaso>" del resultado de la busqueda
    And Valido el campo tipo de registro que diga "Canales Prioritarios Pyme" en la vista casos
    And Valido que la etapa del caso sea "Derivado N3"
    And Presiono el boton "New" del componente casos relacionados
    And Selecciono "PYME" en el campo unidad de negocio
    And Selecciono "<departamento>" en el campo departamento
    And Selecciono "<producto>" en el campo producto
    And Selecciono "<categoria>" en el campo categoria
    And Ingreso fecha hoy en el campo fecha de vencimiento
    And Ingreso "Prueba de subcaso" en el campo descripcion
    And Presiono el boton guardar en el subcaso
    Then El sub caso se crea correctamente y me direcciona al page layout de este
    And Visualizo la fecha en el campo Fecha de Vencimiento en el subcaso creado

    Examples:
      |usuario           |numeroCaso |departamento				   |producto			  |categoria  |
      |Mayda Baez Valdes |17160778   |Centro atención tarjetas (CAT) |CAT Tarjeta de crédito|Salones VIP|
      |Mayda Baez Valdes |17160778   |Centro atención tarjetas (CAT) |CAT Tarjeta de crédito|Campañas/Descuentos/Dev. Interés|
      |Mayda Baez Valdes |17160778   |Centro atención tarjetas (CAT) |CAT Tarjeta de crédito|Acumulación Pesos/Puntos Millas/Personas|
      |Mayda Baez Valdes |17160778   |Centro atencion tarjetas (CAT) |CAT Tarjeta de crédito|Impuestos/Comisiones/Otros|
      |Mayda Baez Valdes |17160778   |Centro atención tarjetas (CAT) |CAT Tarjeta de crédito|Reversa en línea no procesada|
      |Mayda Baez Valdes |17160778   |Centro atención tarjetas (CAT) |CAT Tarjeta de crédito|Revisión monto transacción|
      |Mayda Baez Valdes |17160778   |Centro atención tarjetas (CAT) |CAT Tarjeta de crédito|Consulta compra inyectada|
      |Mayda Baez Valdes |17160778   |Centro atención tarjetas (CAT) |CAT Tarjeta de débito |Reversa en línea no procesada|
      |Mayda Baez Valdes |17160778   |Centro atención tarjetas (CAT) |CAT Tarjeta de débito |Revisión monto transacción|
      |Mayda Baez Valdes |17160778   |Centro atención tarjetas (CAT) |CAT Tarjeta de débito |Consulta compra inyectada|

  Scenario Outline: Crear Subcaso PYME departamento Fraudes
    Given Inicio sesion con en el usuario en SF "<usuario>"
    When Busco y selecciono el "<numeroCaso>" del resultado de la busqueda
    And Valido el campo tipo de registro que diga "Canales Prioritarios Pyme" en la vista casos
    And Valido que la etapa del caso sea "Derivado N3"
    And Presiono el boton "New" del componente casos relacionados
    And Selecciono "PYME" en el campo unidad de negocio
    And Selecciono "<departamento>" en el campo departamento
    And Selecciono "<producto>" en el campo producto
    And Selecciono "<categoria>" en el campo categoria
    And Ingreso fecha hoy en el campo fecha de vencimiento
    And Ingreso "Prueba de subcaso" en el campo descripcion
    And Presiono el boton guardar en el subcaso
    Then El sub caso se crea correctamente y me direcciona al page layout de este
    And Visualizo la fecha en el campo Fecha de Vencimiento en el subcaso creado

    Examples:
      |usuario           |numeroCaso|departamento |producto	   			|categoria    |
      |Mayda Baez Valdes |17160778  |Fraudes      |Orden de pago			|Adulteracion/Falsificacion|
      |Mayda Baez Valdes |17160778  |Fraudes      |Orden de pago			|Suplantación|
      |Mayda Baez Valdes |17160778  |Fraudes      |Inversiones DAP, FF/MM	|Adulteración/Falsificación/Suplantación|
      |Mayda Baez Valdes |17160778  |Fraudes      |Inversiones DAP, FF/MM	|Adulteración/Falsificación/Suplantación|
      |Mayda Baez Valdes |17160778  |Fraudes      |Tarjeta de crédito		|Mayor a 35 uf|
      |Mayda Baez Valdes |17160778  |Fraudes      |Tarjeta de crédito		|Menor a 35 uf|
      |Mayda Baez Valdes |17160778  |Fraudes      |Tarjeta de débito 		|Menor a 35 uf|
      |Mayda Baez Valdes |17160778  |Fraudes      |Web 					|Mayor a 35 uf|
      |Mayda Baez Valdes |17160778  |Fraudes      |Web					|Menor a 35 uf|
      |Mayda Baez Valdes |17160778  |Fraudes      |Tarjeta de débito 		|Mayor a 35 uf|

  Scenario Outline: Crear Subcaso PYME departamento Equipo Especialista hipotecario  Backoffice chip  Post Firma chip
    Given Inicio sesion con en el usuario en SF "<usuario>"
    When Busco y selecciono el "<numeroCaso>" del resultado de la busqueda
    And Valido el campo tipo de registro que diga "Canales Prioritarios Pyme" en la vista casos
    And Valido que la etapa del caso sea "Derivado N3"
    And Presiono el boton "New" del componente casos relacionados
    And Selecciono "PYME" en el campo unidad de negocio
    And Selecciono "<departamento>" en el campo departamento
    And Selecciono "<producto>" en el campo producto
    And Selecciono "<categoria>" en el campo categoria
    And Ingreso fecha hoy en el campo fecha de vencimiento
    And Ingreso "Prueba de subcaso" en el campo descripcion
    And Presiono el boton guardar en el subcaso
    Then El sub caso se crea correctamente y me direcciona al page layout de este
    And Visualizo la fecha en el campo Fecha de Vencimiento en el subcaso creado

    Examples:
      |usuario           |numeroCaso |departamento					|producto	   		|categoria    			 |
      |Mayda Baez Valdes |17160778   |Equipo Especialista hipotecario |Especialista Chip	|Consulta Set Hipotecario|
      |Mayda Baez Valdes |17160778   |Equipo Especialista hipotecario	|Especialista Chip	|Consulta en Firmas Digital|
      |Mayda Baez Valdes |17160778   |Equipo Backoffice Chip			|Backoffice Chip	|Seguros hipotecarios|
      |Mayda Baez Valdes |17160778   |Equipo Backoffice Chip			|Backoffice Chip	|Reclamo Dividendo|
      |Mayda Baez Valdes |17160778   |Equipo Backoffice Chip			|Backoffice Chip	|Consulta Gastos Operacionales|
      |Mayda Baez Valdes |17160778   |Equipo Backoffice Chip			|Backoffice Chip	|Entrega de Escritura|
      |Mayda Baez Valdes |17160778   |Equipo Backoffice Chip			|Backoffice Chip	|Solicitud Certificado|
      |Mayda Baez Valdes |17160778   |Equipo Post Firma Chip			|Post Firma Chip	|Documentación Hipotecaria/Legal/Comercial|
      |Mayda Baez Valdes |17160778   |Equipo Post Firma Chip			|Post Firma Chip	|Reparo Legal/Comercial|
      |Mayda Baez Valdes |17160778   |Equipo Post Firma Chip			|Post Firma Chip	|Carta Resguardo|
      |Mayda Baez Valdes |17160778   |Equipo Post Firma Chip			|Post Firma Chip	|Consulta CBR|

  Scenario Outline: Crear Subcaso PYME departamento Equipo legal chip  Unidad control y cuadratura contable ATM  Call Center Normaliza
    Given Inicio sesion con en el usuario en SF "<usuario>"
    When Busco y selecciono el "<numeroCaso>" del resultado de la busqueda
    And Valido el campo tipo de registro que diga "Canales Prioritarios Pyme" en la vista casos
    And Valido que la etapa del caso sea "Derivado N3"
    And Presiono el boton "New" del componente casos relacionados
    And Selecciono "PYME" en el campo unidad de negocio
    And Selecciono "<departamento>" en el campo departamento
    And Selecciono "<producto>" en el campo producto
    And Selecciono "<categoria>" en el campo categoria
    And Ingreso fecha hoy en el campo fecha de vencimiento
    And Ingreso "Prueba de subcaso" en el campo descripcion
    And Presiono el boton guardar en el subcaso
    Then El sub caso se crea correctamente y me direcciona al page layout de este
    And Visualizo la fecha en el campo Fecha de Vencimiento en el subcaso creado

    Examples:
      |usuario           |numeroCaso |departamento							 |producto	   						  |categoria|
      |Mayda Baez Valdes |17160778   |Equipo Legal Chip						 |Legal Chip						  |Modificación Clausulas Escrituras|
      |Mayda Baez Valdes |17160778   |Equipo Legal Chip						 |Legal Chip						  |Cambios en Escritura|
      |Mayda Baez Valdes |17160778   |Equipo Legal Chip						 |Legal Chip						  |Emisión y Firma Escritura|
      |Mayda Baez Valdes |17160778   |Equipo Legal Chip 						 |Legal Chip						  |Solicitado Documentos Digitales|
      |Mayda Baez Valdes |17160778   |Unidad Control Y Cuadratura Contable Atm |Tarjeta de crédito/Tarjeta de débito|Problema en giro Cajero automático con abono|
      |Mayda Baez Valdes |17160778   |Unidad Control Y Cuadratura Contable Atm |Tarjeta de crédito/Tarjeta de débito|Problema en giro Cajero automático sin abono provisorio|
      |Mayda Baez Valdes |17160778   |Unidad Control Y Cuadratura Contable Atm |Tarjeta de crédito/Tarjeta de débito|Aclaración Cargos/Abonos/Giro|
      |Mayda Baez Valdes |17160778   |Unidad Control Y Cuadratura Contable Atm |Tarjeta de crédito/Tarjeta de débito|Reclamos Prioritarios: SERNAC, CMF o Gerencia General|
      |Mayda Baez Valdes |17160778   |Call Center Normaliza 					 |Crédito de consumo BCI/Nova		  |En mora cartera vencida / castigada|
      |Mayda Baez Valdes |17160778   |Call Center Normaliza					 |Castigos							  |Condonación / Alternativas renegociación|
      |Mayda Baez Valdes |17160778   |Call Center Normaliza					 |T. Crédito						  |En mora cartera vencida / castigada|
      |Mayda Baez Valdes |17160778   |Call Center Normaliza					 |Crédito hipotecario				  |En mora cartera vencida / castigada|

  Scenario Outline: Crear Subcaso PYME departamento Unidad Custodia Centralizada
    Given Inicio sesion con en el usuario en SF "<usuario>"
    When Busco y selecciono el "<numeroCaso>" del resultado de la busqueda
    And Valido el campo tipo de registro que diga "Canales Prioritarios Pyme" en la vista casos
    And Valido que la etapa del caso sea "Derivado N3"
    And Presiono el boton "New" del componente casos relacionados
    And Selecciono "PYME" en el campo unidad de negocio
    And Selecciono "<departamento>" en el campo departamento
    And Selecciono "<producto>" en el campo producto
    And Selecciono "<categoria>" en el campo categoria
    And Ingreso fecha hoy en el campo fecha de vencimiento
    And Ingreso "Prueba de subcaso" en el campo descripcion
    And Presiono el boton guardar en el subcaso
    Then El sub caso se crea correctamente y me direcciona al page layout de este
    And Visualizo la fecha en el campo Fecha de Vencimiento en el subcaso creado

    Examples:
      |usuario           |numeroCaso |departamento					|producto	   					|categoria    			 				|
      |Mayda Baez Valdes |17160778   |Unidad custodia centralizada	|Línea sobregiro persona megapag|Pagaré									|
      |Mayda Baez Valdes |17160778   |Unidad custodia centralizada	|Línea sobregiro persona megapag|Solicitud de crédito					|
      |Mayda Baez Valdes |17160778   |Unidad custodia centralizada	|Línea sobregiro persona megapag|Solicitud Incorporacion seguro y DPS	|
      |Mayda Baez Valdes |17160778   |Unidad custodia centralizada	|Línea sobregiro persona megapag|Anexo Avalista							|
      |Mayda Baez Valdes |17160778   |Unidad custodia centralizada	|Línea sobregiro persona megapag|Propuesta de seguro					|
      |Mayda Baez Valdes |17160778   |Unidad custodia centralizada	|Mandato						|Pagaré 								|
      |Mayda Baez Valdes |17160778   |Unidad custodia centralizada	|Mandato						|Mandato								|
      |Mayda Baez Valdes |17160778   |Unidad custodia centralizada	|Mandato						|Escritura								|

  Scenario Outline: Crear Subcaso PYME departamento Unidad Custodia Centralizada y Unidad de garantias
    Given Inicio sesion con en el usuario en SF "<usuario>"
    When Busco y selecciono el "<numeroCaso>" del resultado de la busqueda
    And Valido el campo tipo de registro que diga "Canales Prioritarios Pyme" en la vista casos
    And Valido que la etapa del caso sea "Derivado N3"
    And Presiono el boton "New" del componente casos relacionados
    And Selecciono "PYME" en el campo unidad de negocio
    And Selecciono "<departamento>" en el campo departamento
    And Selecciono "<producto>" en el campo producto
    And Selecciono "<categoria>" en el campo categoria
    And Ingreso fecha hoy en el campo fecha de vencimiento
    And Ingreso "Prueba de subcaso" en el campo descripcion
    And Presiono el boton guardar en el subcaso
    Then El sub caso se crea correctamente y me direcciona al page layout de este
    And Visualizo la fecha en el campo Fecha de Vencimiento en el subcaso creado

    Examples:
      |usuario           |numeroCaso |departamento					|producto	   		|categoria|
      |Mayda Baez Valdes |17160778   |Unidad custodia centralizada	|Consumo retail 	|Pagaré|
      |Mayda Baez Valdes |17160778   |Unidad custodia centralizada	|Consumo retail 	|Solicitud de crédito|
      |Mayda Baez Valdes |17160778   |Unidad custodia centralizada	|Consumo retail 	|Solicitud Incorporación seguro y DPS|
      |Mayda Baez Valdes |17160778   |Unidad custodia centralizada	|Consumo retail 	|Propuesta de seguro|
      |Mayda Baez Valdes |17160778   |Unidad custodia centralizada	|Consumo retail 	|Contrato crédito consumo y hoja resumen|
      |Mayda Baez Valdes |10865304   |Unidad custodia centralizada	|Consumo retail 	|Condiciones generales|
      |Mayda Baez Valdes |17160778   |Unidad custodia centralizada	|PGM				|Pagaré|
      |Mayda Baez Valdes |17160778   |Unidad de garantías			|Garantía			|Activación|
      |Mayda Baez Valdes |17160778   |Unidad de garantías			|Garantía			|Alzamiento|
      |Mayda Baez Valdes |17160778   |Unidad de garantías			|Garantía			|Renovación de seguro|
      |Mayda Baez Valdes |17160778   |Unidad de garantías			|Garantía			|Actualización de tasaciones|
      |Mayda Baez Valdes |17160778   |Unidad de garantías			|Cartas de resguardo|Aprobación|
      |Mayda Baez Valdes |17160778   |Unidad de garantías			|Cartas de resguardo|Rechazo|

  Scenario Outline: Crear Subcaso PYME departamento Unidadas de recaudaciones  Unidada control procesos Tarjetas  Equipo Activacion garantias chip
    Given Inicio sesion con en el usuario en SF "<usuario>"
    When Busco y selecciono el "<numeroCaso>" del resultado de la busqueda
    And Valido el campo tipo de registro que diga "Canales Prioritarios Pyme" en la vista casos
    And Valido que la etapa del caso sea "Derivado N3"
    And Presiono el boton "New" del componente casos relacionados
    And Selecciono "PYME" en el campo unidad de negocio
    And Selecciono "<departamento>" en el campo departamento
    And Selecciono "<producto>" en el campo producto
    And Selecciono "<categoria>" en el campo categoria
    And Ingreso fecha hoy en el campo fecha de vencimiento
    And Ingreso "Prueba de subcaso" en el campo descripcion
    And Presiono el boton guardar en el subcaso
    Then El sub caso se crea correctamente y me direcciona al page layout de este
    And Visualizo la fecha en el campo Fecha de Vencimiento en el subcaso creado

    Examples:
      |usuario           |numeroCaso |departamento				 |producto	   							|categoria|
      |Mayda Baez Valdes |17160778   |Unidad de recaudaciones		 |Crédito de consumo (débito multibanco)|Consulta estado de Mandato|
      |Mayda Baez Valdes |17160778   |Unidad de recaudaciones		 |Crédito de consumo (débito multibanco)|Consulta por Activación de Mandato|
      |Mayda Baez Valdes |17160778   |Unidad de recaudaciones		 |Crédito de consumo (débito multibanco)|Consulta por cargos débito/Personas|
      |Mayda Baez Valdes |17160778   |Unidad Control Procesos Tarjetas|TC									|Emisión tarjetas de emergencia|
      |Mayda Baez Valdes |17160778   |Unidad Control Procesos Tarjetas|TC									|Regularización de pagos por transferencia/TEF|
      |Mayda Baez Valdes |17160778   |Unidad Control Procesos Tarjetas|TD									|Regularización redcompra|
      |Mayda Baez Valdes |17160778   |Equipo Activación Garantías Chip|Garantías Chip						|Modificaciones Operaciones Hipotecarias|
      |Mayda Baez Valdes |17160778   |Equipo Activación Garantías Chip|Garantías Chip						|Consulta/Pedido/Estado de la Activación Hipotecaria|
      |Mayda Baez Valdes |17160778   |Equipo Activación Garantías Chip|Garantías Chip						|Emision Escritura|

  Scenario Outline: Crear Subcaso PYME departamento Departamento operativo fiscalia Equipo Activacion y Pagos Chip
    Given Inicio sesion con en el usuario en SF "<usuario>"
    When Busco y selecciono el "<numeroCaso>" del resultado de la busqueda
    And Valido el campo tipo de registro que diga "Canales Prioritarios Pyme" en la vista casos
    And Valido que la etapa del caso sea "Derivado N3"
    And Presiono el boton "New" del componente casos relacionados
    And Selecciono "PYME" en el campo unidad de negocio
    And Selecciono "<departamento>" en el campo departamento
    And Selecciono "<producto>" en el campo producto
    And Selecciono "<categoria>" en el campo categoria
    And Ingreso fecha hoy en el campo fecha de vencimiento
    And Ingreso "Prueba de subcaso" en el campo descripcion
    And Presiono el boton guardar en el subcaso
    Then El sub caso se crea correctamente y me direcciona al page layout de este
    And Visualizo la fecha en el campo Fecha de Vencimiento en el subcaso creado

    Examples:
      |usuario           |numeroCaso |departamento				   |producto	   	|categoria|
      |Mayda Baez Valdes |17160778   |Departamento Operativo Fiscalía|Cuenta corriente|Cargo por servicios legales honorarios abogados, convervador y notaria|
      |Mayda Baez Valdes |17160778   |Departamento Operativo Fiscalía|Cuenta corriente|Cargo por servicios legales cliente por cobro de comisiones por informe de sociedad|
      |Mayda Baez Valdes |17160778   |Departamento Operativo Fiscalía|Cuenta corriente|Cargo retención judicial|
      |Mayda Baez Valdes |17160778   |Departamento Operativo Fiscalía|Cuenta corriente|Solicitud devolución de comisión|
      |Mayda Baez Valdes |17160778   |Departamento Operativo Fiscalía|Alzamiento		|Estado de alzamiento|
      |Mayda Baez Valdes |17160778   |Departamento Operativo Fiscalía|Sociedades   	|Reparo o consulta|
      |Mayda Baez Valdes |17160778   |Equipo Activación y Pagos Chip |Pagos Chip		|Estado Pago|
      |Mayda Baez Valdes |17160778   |Equipo Activación y Pagos Chip |Pagos Chip		|Estado Desembolso|