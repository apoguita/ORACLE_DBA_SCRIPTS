--[Error] Execution (1: 18): ORA-01591: lock held by in-doubt distributed transaction 106.29.1290462

select * from DBA_2PC_PENDING where state <> 'committed'

--select 'rollback force '''||local_tran_id||''';' from DBA_2PC_PENDING where state='prepared';

rollback force '754.12.125108';
