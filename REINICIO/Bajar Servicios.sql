CBS:
srvctl stop database -d cbsbpgt
srvctl status database -d cbsbpgt
srvctl start database -d cbsbpgt

srvctl stop database -d cbsbpgt -o immediate

--iniciar servicio Dblink

srvctl start service -db cbsbpgt -service cbsbpg_dbl

TC:
srvctl stop service -d tcbpgt
srvctl status service -d tcbpgt
srvctl start service -d tcbpgt

srvctl stop database -d tcbpgt -o immediate

srvctl start service -db tcbpgt -service tcbpg_dbl


Punto de restauración
Create restore point RP_01 guaratee flashback database;
Select * from v$restore_point;

Drop restore point RP_01;


matar servicios al iniciar DB puestoq ue se conectan sesiones, entrar con SYS
