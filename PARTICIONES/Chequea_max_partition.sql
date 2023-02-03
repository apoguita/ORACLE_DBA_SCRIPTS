SELECT 
    TABLE_OWNER, TABLE_NAME, PARTITION_NAME, TABLESPACE_NAME  
FROM 
    DBA_TAB_PARTITIONS
WHERE
    TABLE_OWNER||'.'||TABLE_NAME||'.'||PARTITION_POSITION IN
        (SELECT 
            TABLE_OWNER||'.'||TABLE_NAME||'.'||MAX(PARTITION_POSITION)  
         FROM 
            DBA_TAB_PARTITIONS
         WHERE
            TABLE_OWNER NOT IN('SYS','SYSTEM')
         GROUP BY
            TABLE_OWNER, TABLE_NAME)
ORDER BY 
    TABLE_OWNER, TABLE_NAME;