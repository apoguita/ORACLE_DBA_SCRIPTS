/* GENERA LOS SCRIPTS PARA PARTICIONES*/
/* SE NECEISTA ENCENDER EL DMBS_OUTPUT */
/* CAMBIAR EL MES!! */

select  
'exec ADMINDB.crea_particiones(''' || TABLE_OWNER || ''',''' || TABLE_NAME || ''',''' || TABLESPACE_PREFIX || ''',''MAY23'',''' || PARTITION_TYPE || ''',''' || TABLESPACE_TYPE || ''');'
from ADMINDB.PARTITION_INFO

/*
select count(*) from dba_tablespaces where upper(tablespace_name) = 'BO_CBR_DAT_2023'
CCLR_BIT_REDUCIDO
*/

/* errores en TC */
/*


BO_CBR_DAT_2023
BO_CBU_DAT_2023
CLE_LC_DAT_2023
CLE_LP_DAT_2023
TC_TDSIH_DAT_2023
BO_NDE_DAT_2023
CLE_EP_DAT_2023
TC_TMF_DAT_ABR23
CLE_ESPRO_DAT_2023
TC_TMFH_DAT_2023
PT_PCH_DAT_2023
TC_TCH_DAT_2023
--BO.CM_LIQUIDACION_DETALLE


CBS
--resueltos todos errores
--FALTA INCLUIR PR_MOVIMIENTOS que lleva en 2028

estas dos tablas truenen por tipo particionamiento, hay que revisar si se crean solas , siempre aparecen

cc_estado_cuenta_masivo_deta
cc_estado_cuenta_ckimagen

*/
