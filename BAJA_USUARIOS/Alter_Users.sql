select 'ALTER USER '||USERNAME||' ACCOUNT LOCK PASSWORD EXPIRE PROFILE PRO_BLOQUEADOS;' from dba_users where username in
--select * from dba_users where username in
--select 'REVOKE '||PRIVILEGE||' FROM '||GRANTEE||';' from dba_sys_privs where grantee in
--select * from dba_sys_privs where grantee in
--select 'REVOKE '||GRANTED_ROLE||' FROM '||GRANTEE||';' from dba_role_privs where grantee in
--select * from dba_role_privs where grantee in
--select 'REVOKE '||PRIVILEGE||' ON '||OWNER||'.'||TABLE_NAME||' FROM '||GRANTEE||';' from dba_tab_privs where grantee in
--select * from dba_tab_privs where grantee in
(
'SINDYC_OS', 
'BRIGIDO_PB',
'JJOSUE_MG', 
'DIEGOJ_PV', 
'ANGELE_CH', 
'WILDAA_LP', 
'WILSONE_VT'
)
