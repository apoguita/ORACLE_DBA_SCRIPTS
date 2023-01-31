-- :UOrigen :=  'LESTERM_GD';
-- :UDestino := 'MARTAA_QJ';

select * from dba_users where username in (:UOrigen,:UDestino);

select 'ALTER USER ' || :UDestino || ' identified by "PROMERICA.2023$" ACCOUNT UNLOCK PASSWORD EXPIRE PROFILE ' || PROFILE || ';' from dba_users where username = :UOrigen
union
select 'GRANT ' || PRIVILEGE || ' to ' || :UDestino || ';'  from dba_sys_privs where grantee = :UOrigen
union
select 'GRANT ' || GRANTED_ROLE || ' to ' || :UDestino || ';' from dba_role_privs where grantee = :UOrigen
union
select 'GRANT ' || PRIVILEGE || ' on ' || OWNER ||  '.' || TABLE_NAME || ' to ' || :UDestino || ';'  from dba_tab_privs where owner not in ('SYS','SYSTEM') and grantee = :UOrigen;
