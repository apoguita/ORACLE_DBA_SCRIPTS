select s.INST_ID, s.SID, s.USERNAME, s.STATUS, p.TRACEFILE from gv$session s, gv$process p
where 
        p.addr = s.paddr
    and p.inst_id = s.inst_id
    and s.sid = &SID

--1	1036	EDGARR_BS	ACTIVE	/u01/app/oracle/diag/rdbms/csp01t/csp01t1/trace/csp01t1_ora_12594.trc

