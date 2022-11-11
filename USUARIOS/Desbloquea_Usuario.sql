
select * from dba_users where username in (:UDestino);

select 'ALTER USER ' || :UDestino || ' identified by "PROMERICA.2022" ACCOUNT UNLOCK PASSWORD EXPIRE PROFILE ' || PROFILE || ';' from dba_users where username = :UDestino;

/*
se desbloqueó y cambio contraseña al usuario, deberá cambiar contraseña en el siguiente logueo

contraseña: PROMERICA.2022

*/
