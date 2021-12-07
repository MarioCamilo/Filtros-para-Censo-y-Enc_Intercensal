* Encoding: UTF-8.
****////Municipios ocurrencia Mich_T_Caliente****////

COMPUTE Mun_ocurr_Mich=0.
IF (mun= 002) Mun_ocurr_Mich=1.
EXECUTE.

IF (mun = 006) Mun_ocurr_Mich=2.
EXECUTE.

IF (mun = 012).Mun_ocurr_Mich=3.
EXECUTE.

IF (mun = 013) Mun_ocurr_Mich=4.
EXECUTE.

IF (mun = 029) Mun_ocurr_Mich=5.
EXECUTE.

IF (mun = 033) Mun_ocurr_Mich=6.
EXECUTE.

IF (mun = 035) Mun_ocurr_Mich=7.
EXECUTE.

IF (mun = 038) Mun_ocurr_Mich=8.
EXECUTE.

IF (mun = 055) Mun_ocurr_Mich=9.
EXECUTE.

IF (mun = 057) Mun_ocurr_Mich=10.
EXECUTE.

IF (mun =059) Mun_ocurr_Mich=11.
EXECUTE. 

IF (mun = 064) Mun_ocurr_Mich=12.
EXECUTE.

IF (mun = 077) Mun_ocurr_Mich=13.
EXECUTE. 

IF (mun = 089) Mun_ocurr_Mich=14.
EXECUTE. 

IF (mun = 092) Mun_ocurr_Mich=15.
EXECUTE.

IF (mun =097) Mun_ocurr_Mich=16.
EXECUTE.

IF (mun =099) Mun_ocurr_Mich=17.
EXECUTE.


VALUE LABELS Mun_ocurr_Mich
0 Resto de Michoacán
1	Aguililla
2	Apatzingán
3	Buenavista
4	Carácuaro
5	Churumuco
6	Gabriel Zamora
7	La Huacana
8	Huetamo
9	Múgica
10	Nocupétaro
11	Nuevo Urecho
12	Parácuaro
13	San Lucas
14	Tepalcatepec
15	Tiquicheo de Nicolás Romero
16	Turicato
17	Tuzantla.
EXECUTE.

*MICHOACAN*

DATASET ACTIVATE ConjuntoDatos1.
RECODE Mun_ocurr_Mich (1 thru 17=1) (ELSE=Copy) INTO mich_tc.
EXECUTE.

VALUE LABELS mich_tc
0 Resto Michoacán
1 Michoacan-Tierra Caliente.
EXECUTE.


****////Municipios ocurrencia Gro_T_Caliente****////

COMPUTE Mun_ocurr_Gro=0.
IF (mun = 003) Mun_ocurr_Gro=1.
EXECUTE.

IF (mun = 007) Mun_ocurr_Gro=2.
EXECUTE.

IF (mun = 022) Mun_ocurr_Gro=3.
EXECUTE.

IF (mun = 027) Mun_ocurr_Gro=4.
EXECUTE.

IF (mun = 050) Mun_ocurr_Gro=5.
EXECUTE.

IF (mun = 054) Mun_ocurr_Gro=6.
EXECUTE.

IF (mun = 064) Mun_ocurr_Gro=7.
EXECUTE.

IF (mun = 067) Mun_ocurr_Gro=8.
EXECUTE.

IF (mun =073) Mun_ocurr_Gro=9.
EXECUTE.

VALUE LABELS Mun_ocurr_Gro
0 Resto de Guerrero
1	Ajuchitlán del Progreso
2	Arcelia
3	Coyuca de Catalán
4	Cutzamala de Pinzón
5	Pungarabato
6	San Miguel Totolapan
7	Tlalchapa
8	Tlapehuala
9	Zirándaro.
EXECUTE.

*GUERRERO¨*

DATASET ACTIVATE ConjuntoDatos1.
RECODE Mun_ocurr_Gro (1 thru 9=1) (ELSE=Copy) INTO gro_tc.
EXECUTE.

VALUE LABELS gro_tc
0 Resto de Guerrero
1 Guerrero-Tierra Caliente.
EXECUTE.


****////Municipios ocurrencia Edomex_T_Caliente****////

COMPUTE Mun_ocurr_EdoMex=0.
IF (mun = 008) Mun_ocurr_EdoMex=1.
EXECUTE. 

IF (mun = 080) Mun_ocurr_EdoMex=2.
EXECUTE. 

IF (mun = 082) Mun_ocurr_EdoMex=3.
EXECUTE. 

IF (mun = 105) Mun_ocurr_EdoMex=4.
EXECUTE. 

IF (mun= 123) Mun_ocurr_EdoMex=5.
EXECUTE. 

VALUE LABELS Mun_ocurr_EdoMex
0 Resto del Edomex
1	Amatepec
2	Sultepec
3	Tejupilco
4	Tlatlaya
5	Luvianos.
EXECUTE.


*EDOMEX*

DATASET ACTIVATE ConjuntoDatos1.
RECODE Mun_ocurr_EdoMex (1 thru 5=1) (ELSE=Copy) INTO edomex_tc.
EXECUTE.

VALUE LABELS edomex_tc
0 Resto del edomex
1 Edomex-Tierra Caliente.
EXECUTE.

***** ETIQUETAS PARA ESTADO CIVIL CENSO 2000****

VALUE LABELS estcon
1 Vive con su pareja, unión libre
2 Está separado
3 Está divorciado
4 Viudo
5 Casado solo por lo civil
6 Casado solo por la iglesia
7 Casado civil y religiosamente
8 Soltero
9 No especificado
0 Blanco por pase.
EXECUTE.



***** TRANSFORMAR ESTADO CONYUGAL CENSO 2000 Y 2010****

RECODE ESTCON (1=1) (4=3) (8=4) (9=5) (2 thru 3=2) (5 thru 7=1) (ELSE=Copy) INTO estcon2.
VARIABLE LABELS  estcon2 'estcon2'.
EXECUTE.

VALUE LABELS estcon2
1 Casado-Union libre
2 Divorciado-Separado
3 Viudo
4 Soltero
5 No especificado.
EXECUTE.


***** TRANSFORMAR ESTADO CONYUGAL E. INTERCENSAL 2015****

RECODE SITUA_CONYUGAL (1=1) (5=1) (4=3) (6=4) (9=5) (2 thru 3=2) INTO estcon2.
EXECUTE.

VALUE LABELS estcon2
1 Casado-Union libre
2 Divorciado-Separado
3 Viudo
4 Soltero
5 No especificado.
EXECUTE.
