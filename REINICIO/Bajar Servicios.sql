CBS:
srvctl stop database -d cbsbpgt
srvctl status database -d cbsbpgt
srvctl start database -d cbsbpgt

srvctl stop database -d cbsbpgt -o immediate

TC:
srvctl stop service -d tcbpgt
srvctl status service -d tcbpgt
srvctl start service -d tcbpgt

srvctl stop database -d tcbpgt -o immediate

Punto de restauración
Create restore point RP_01 guaratee flashback database;
Select * from v$restore_point;

Drop restore point RP_01;


matar servicios al iniciar DB puestoq ue se conectan sesiones, entrar con SYS
