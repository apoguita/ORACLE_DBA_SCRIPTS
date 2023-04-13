select
   r.value                                ||'/diag/rdbms/'||
   sys_context('USERENV','DB_NAME')       ||'/'||
   sys_context('USERENV','INSTANCE_NAME') ||'/trace/'||
   sys_context('USERENV','INSTANCE_NAME') ||s.INST_ID  ||'_ora_'||p.spid||'.trc'
   as tracefile_name
from gv$session s, gv$parameter r, gv$process p
where r.name = 'diagnostic_dest'
and s.sid = &1
and p.addr = s.paddr;

--/u01/app/oracle\diag\rdbms\CSP01T\csp01t2\trace\CSP01T_ora_12594.trc

