/*************************************************************************
* TITULO ..: INFORMES DEL SISTEMA                                        *
**************************************************************************

AUTOR: Nelson Fern�ndez G�mez       FECHA DE CREACION: ago 26/2008 DIA A
       Colombia, Bucaramanga        INICIO:  02:49 PM  ago 26/2008 DIA

OBJETIVOS:

1- Registra los informes del sistema

2- Retorna NIL

*------------------------------------------------------------------------*
*                              PROGRAMA                                  *
*------------------------------------------------------------------------*/

FUNCTION CaFInfSys(lShared,cNomUsr,cCodSui)

*>>>>DESCRIPCION DE PARAMETROS
/*     lShared                              // .T. Archivos Compartidos
       cNomUsr                              // Nombre del Usuario
       cCodSui                              // C�digo del Sistema */
*>>>>FIN DESCRIPCION DE PARAMETROS

*>>>>DECLARACION DE VARIABLES
       LOCAL       i := 0                   // Contador

       LOCAL nOrdInf := 0                   // Orden del Informe
       LOCAL nNroInf := 0                   // N�mero del Informe
       LOCAL cCodInf := ''                  // C�digo del Informe
       LOCAL cTitulo := ''                  // T�tulo del Informe
       LOCAL cObsInf := ''                  // Observaci�n del Informe
       LOCAL lInfVar := .F.                 // Informe variable

       LOCAL aInfSys := {}                  // Informes del Sistema
*>>>>FIN DECLARACION DE VARIABLES

*>>>>INFORME DEL SISTEMA
       nOrdInf := 1
       nNroInf := 001
       cCodInf := 'CaF00100'
       cTitulo := 'INFORMES DEL SISTEMA'
       cObsInf := 'Informes del Sistema'
       lInfVar := .F.
       AADD(aInfSys,{nOrdInf,nNroInf,cCodInf,cTitulo,cObsInf,lInfVar})
     *�Definici�n del informe.

       nOrdInf := 2
       nNroInf := 002
       cCodInf := 'CaF00200'
       cTitulo := 'INFORMES CONTROLADOS'
       cObsInf := 'Informes Controlados'
       lInfVar := .F.
       AADD(aInfSys,{nOrdInf,nNroInf,cCodInf,cTitulo,cObsInf,lInfVar})
     *�Definici�n del informe.

       nOrdInf := 3
       nNroInf := 003
       cCodInf := 'CaF00300'
       cTitulo := 'INGRESOS A LA CAFETERIA. ESTUDIANTES'
       cObsInf := 'Estudiante con ingresos a la Cafeteria'
       lInfVar := .F.
       AADD(aInfSys,{nOrdInf,nNroInf,cCodInf,cTitulo,cObsInf,lInfVar})
     *�Definici�n del informe.

       nOrdInf := 4
       nNroInf := 004
       cCodInf := 'CaF00400'
       cTitulo := 'LISTADO DEL PERSONAL'
       cObsInf := 'Profesores con Ingresos a la Cafeteria'
       lInfVar := .F.
       AADD(aInfSys,{nOrdInf,nNroInf,cCodInf,cTitulo,cObsInf,lInfVar})
     *�Definici�n del informe.

       nOrdInf := 5
       nNroInf := 005
       cCodInf := 'CaF00500'
       cTitulo := 'INGRESOS POR DIA A LA CAFETERIA'
       cObsInf := 'Consumos Diarios en la Cafeteria'
       lInfVar := .F.
       AADD(aInfSys,{nOrdInf,nNroInf,cCodInf,cTitulo,cObsInf,lInfVar})
     *�Definici�n del informe.

       nOrdInf := 6
       nNroInf := 006
       cCodInf := 'CaF00600'
       cTitulo := 'INGRESOS POR FECHAS A LA CAFETERIA'
       cObsInf := 'Consumos por fechas en la Cafeteria'
       lInfVar := .F.
       AADD(aInfSys,{nOrdInf,nNroInf,cCodInf,cTitulo,cObsInf,lInfVar})
     *�Definici�n del informe.

       nOrdInf := 7
       nNroInf := 007
       cCodInf := 'CaF00700'
       cTitulo := 'SERVICIOS ACTIVOS PARA LA CAFETERIA'
       cObsInf := 'Consumos activos para la Cafeteria'
       lInfVar := .F.
       AADD(aInfSys,{nOrdInf,nNroInf,cCodInf,cTitulo,cObsInf,lInfVar})
     *�Definici�n del informe.
*>>>>FIN INFORME DEL SISTEMA

*>>>>GRABACION DE LOS INFORMES
       FOR i := 1 TO LEN(aInfSys)

***********DETALLES DEL INFORME
	     nOrdInf := aInfSys[i,1]
	     nNroInf := aInfSys[i,2]
	     cCodInf := aInfSys[i,3]
	     cTitulo := aInfSys[i,4]
	     cObsInf := aInfSys[i,5]
	     lInfVar := aInfSys[i,6]
***********FIN DETALLES DEL INFORME

***********GRABACION DEL INFORME
	     IF nInsInfSys(lShared,cNomUsr,cCodInf,cTitulo,;
		cObsInf,nOrdInf,nNroInf,cCodSui,lInfVar) == 0


		cError('PROBLEMAS CON EL INFORME: '+cCodInf,;
		       'ERROR GRAVE. Tome Nota',;
		       'FAVOR INFORMAR')
		RETURN NIL
	     ENDIF
***********FIN GRABACION DEL INFORME

       ENDFOR
       RETURN NIL
*>>>>FIN GRABACION DE LOS INFORMES

