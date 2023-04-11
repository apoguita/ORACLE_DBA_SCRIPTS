select
   r.value                                ||'\diag\rdbms\'||
   sys_context('USERENV','DB_NAME')       ||'\'||
   sys_context('USERENV','INSTANCE_NAME') ||'\trace\'||
   sys_context('USERENV','DB_NAME')       ||'_ora_'||p.spid||'.trc'
   as tracefile_name
from v$session s, v$parameter r, v$process p
where r.name = 'diagnostic_dest'
and s.sid = &1
and p.addr = s.paddr;
