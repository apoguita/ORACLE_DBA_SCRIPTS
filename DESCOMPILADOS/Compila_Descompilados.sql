-- procedimiento compila todos los objetos descompilados de la DB
/*
utlrp.sql and utlprp.sql
The utlrp.sql and utlprp.sql scripts are provided by Oracle to recompile all invalid objects in the database. 
They are typically run after major database changes such as upgrades or patches. 
They are located in the $ORACLE_HOME/rdbms/admin directory and provide a wrapper on the UTL_RECOMP package. 
utlrp.sql script simply calls the utlprp.sql script with a command line parameter of "0". 
The utlprp.sql accepts a single integer parameter that indicates the level of parallelism as follows.

0 - The level of parallelism is derived based on the CPU_COUNT parameter.
1 - The recompilation is run serially, one object at a time.
N - The recompilation is run in parallel with "N" number of threads.
Both scripts must be run as the SYS user, or another user with SYSDBA, to work correctly
*?

start $ORACLE_HOME/rdbms/admin/utlrp.sql

DECLARE
    threads   PLS_INTEGER := 0;
BEGIN
    UTL_RECOMP.recomp_parallel (threads);
END;
