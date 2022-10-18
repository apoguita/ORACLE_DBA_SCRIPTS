-- :UOrigen :=  'LESTERM_GD';
-- :UDestino := 'MARTAA_QJ';

select 'ALTER USER ' || :UDestino || ' identified by "PROMERICA.2022" ACCOUNT UNLOCK PASSWORD EXPIRE PROFILE ' || PROFILE || ';' from dba_users where username = :UOrigen;

select 'GRANT ' || PRIVILEGE || ' to ' || :UDestino || ';'  from dba_sys_privs where grantee = :UOrigen;

select 'GRANT ' || GRANTED_ROLE || ' to ' || :UDestino || ';' from dba_role_privs where grantee = :UOrigen;

select 'GRANT ' || PRIVILEGE || ' on ' || OWNER ||  '.' || TABLE_NAME || ' to ' || :UDestino || ';'  from dba_tab_privs where owner not in ('SYS','SYSTEM') and grantee = :UOrigen;
