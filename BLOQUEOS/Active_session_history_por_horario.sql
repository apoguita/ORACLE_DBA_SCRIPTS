SELECT to_char(a.sample_time,'dd-mm-yyyy hh24:mi') time,
  b.username,
  a.session_id,
  a.event,
  a.blocking_session,
  a.BLOCKING_INST_ID BLOCK_INST,
  a.module,
  --sum(TIME_WAITED/1000000) time_waited_secs,
  sum(TIME_WAITED/1000/60) time_waited_secs,
  s.sql_id,
  s.sql_text
FROM DBA_HIST_ACTIVE_SESS_HISTORY a, gv$sql s, dba_users b
WHERE a.instance_number=s.inst_id
  and a.sql_id = s.sql_id (+)
  AND a.sample_time between to_date('27012023 163000', 'ddmmyyyy hh24miss') and to_date('27012023 193000', 'ddmmyyyy hh24miss')
  --and blocking_session is not null
  --and a.session_id = 2229
  and nvl(time_waited,0) > 0
  and a.user_id=b.user_id
group by to_char(a.sample_time,'dd-mm-yyyy hh24:mi'),a.session_id, a.event,a.blocking_session,b.username, a.BLOCKING_INST_ID, a.module, s.sql_id, s.sql_text
order by 8
/
