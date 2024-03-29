/*                       SIMA - SISTEMA DE CAFETERIA
		     DECLARACION DE ARCHIVOS DEL SISTEMA

**************************************************************************
* TITULO..: DECLARACION DE ARCHIVOS DEL SISTEMAS                         *
**************************************************************************

AUTOR: Nelson Fern�ndez G�mez       FECHA DE CREACION: MAY 20/2002 LUN A
       Colombia, Bucaramanga        INICIO: 01:05 AM   MAY 20/2002 LUN

OBJETIVOS:

1- Declara todas las variables que contiene la declaraci�n de todos los
   archivos que conforma el sistema.

2- El objetivo principal de esta declaraci�n es estandarizar el modo
   de acceso a los archivos.

*------------------------------------------------------------------------*
*                              PROGRAMA                                  *
*------------------------------------------------------------------------*/

*>>>>DECLARACION DE ARCHIVOS GENERALES
       LOCAL PathSys := 'SIMACAFE'          // Path del Sistema
       LOCAL PathSis := 'BASES'             // Path General del sistema
       LOCAL ExtFile := '.DAT'              // Extension para las bases
       LOCAL cExtNtx := '.NEL'              // Extension para indices
       LOCAL aUseDbf := {}                  // Vector para Apertura de Varias Dbfs
       LOCAL lSiRed  := .T.                 // .T. Apertura de Archivos MultiUsuario
       LOCAL lNoRed  := .F.                 // .F. Apertura de Archivo MonoUsuario

       LOCAL FileTem := 'TEMPO'             // Archivo datos temporal
       LOCAL fNtxTem := 'TEMPO'             // Archivo Indice temporal
       LOCAL cExtTem := '.TEM'              // Extension indice temporal
     *�Archivo Temporal

       LOCAL PathAaa := ''
       LOCAL FileAaa := PathAaa+'TEMP'+ExtFile
       LOCAL fNtxAaa := ''
     *�Archivo de Usuarios

       LOCAL PathErr := ''
       LOCAL fErrSys := PathErr+'ERRORSYS'+ExtFile
       LOCAL fNtxErr := ''
     *�Archivo de Errores

       LOCAL FileClr := 'CFGCOLOR'+ExtFile
     *�Archivo de Configuraci�n del Color

       LOCAL FilePrn := 'DRIVERS'+ExtFile
     *�Archivo de Configuraci�n de Impresoras
*>>>>FIN DECLARACION DE ARCHIVOS GENERALES

*>>>>DECLARACION DE ARCHIVOS DEL SISTEMA
       LOCAL fSimCaF := 'SIMACAFE'+ExtFile
     *�Archivo de Configuraci�n del sistema

       LOCAL FilePer := 'PERSONAL'+ExtFile
     *�Archivo de Personal

       LOCAL FileTip := 'TIPOPERS'+ExtFile
     *�Archivo de Tipo de Personal

       LOCAL FCaFAno := 'CAFE'              // Ej: CAFE2002.DAT
     *�Archivo de Configuraci�n del a�o

       LOCAL FilePrs := 'PRSP'              // Ej: PRSP2002.DAT
     *�Archivo de Configuraci�n del a�o
*>>>>DECLARACION DE ARCHIVOS DEL SISTEMA

*>>>>DECLARACION DE ARCHIVOS COMPARTIDOS
       LOCAL fConAno := 'CONT'              // Ej: CONT2002.DAT
     *�Archivo Configuraci�n del a�o de la Contabilidad

       LOCAL FileCon := 'CONCEPTO'+ExtFile
     *�Archivo de Concepto

       LOCAL FilePro := 'PROFES'           // Ej: PROFES95.DAT
     *�Archivo de Profesores

       LOCAL PathAlu := ''
       LOCAL FileAlu := PathAlu+'MAE'
       LOCAL fNtxAlu := PathAlu+'MAE'
     *�Archivo de Alumnos

       LOCAL PathBto := ''
       LOCAL FMaeBto := 'MAEBTO'            // Ej: MAEBTO95.DAT
       LOCAL fNtxBto := 'MAEBTO'
       LOCAL Ntx1Bto := 'APEBTO'            // Ej: APEBTO95.NEL
       LOCAL Ntx2Bto := 'NOMBTO'            // Ej: NOMBTO95.NEL
     *�Archivo de Alumnos de Bachillerato

       LOCAL PathPri := ''
       LOCAL FMaePri := 'MAEPRI'            // Ej: MAEPRI94.DAT
       LOCAL fNtxPri := 'MAEPRI'
       LOCAL Ntx1Pri := 'APEPRI'            // Ej: APEPRI95.NEL
       LOCAL Ntx2Pri := 'NOMPRI'            // Ej: NOMPRI95.NEL
     *�Archivo de Alumnos de Primaria

       LOCAL PathJar := ''
       LOCAL FMaeJar := 'MAEJAR'            // Ej: MAEJAR94.DAT
       LOCAL fNtxJar := 'MAEJAR'
       LOCAL Ntx1Jar := 'APEJAR'            // Ej: APEJAR95.NEL
       LOCAL Ntx2Jar := 'NOMJAR'            // Ej: NOMJAR95.NEL
     *�Archivo de Alumnos de Jard�n

       LOCAL PathGua := ''
       LOCAL FMaeGua := 'MAEGUA'            // Ej: MAEGUA94.DAT
       LOCAL fNtxGua := 'MAEGUA'
       LOCAL Ntx1Gua := 'APEGUA'            // Ej: APEGUA95.NEL
       LOCAL Ntx2Gua := 'NOMGUA'            // Ej: NOMGUA95.NEL
     *�Archivo de Alumnos de Guarderia

       LOCAL PathGru := ''
       LOCAL FileGru := 'GRU'
     *�Archivo de Grupos

       LOCAL PGruGua := ''
       LOCAL FGruGua := 'GRUGUA'            // Ej: GRUGUA94.DAT
       LOCAL NGruGua := ''
     *�Archivo de Grupos de Guarder�a

       LOCAL PGruJar := ''
       LOCAL FGruJar := 'GRUJAR'            // Ej: GRUJAR94.DAT
       LOCAL NGruJar := ''
     *�Archivo de Grupos de Jard�n

       LOCAL PGruPri := ''
       LOCAL FGruPri := 'GRUPRI'            // Ej: GRUPRI94.DAT
       LOCAL NGruPri := ''
     *�Archivo de Grupos de Primaria

       LOCAL PGruBto := ''
       LOCAL FGruBto := 'GRUBTO'            // Ej: GRUBTO94.DAT
       LOCAL NGruBto := ''
     *�Archivo de Grupos de Bachillerato

       LOCAL FileCli := ''                            // Ej: CLI1101.094
     *�Archivo de Clientes

*>>>>FIN DECLARACION DE ARCHIVOS COMPARTIDOS