
    SELECT * FROM STREAMS_AND_TASKS.SNAPSHOTS.NATION
    --WHERE N_NATIONKEY = 7
    --WHERE DBT_VALID_TO is null
    ORDER BY n_nationkey;


    select * from STREAMS_AND_TASKS.SCD.NATION
    ORDER BY n_nationkey;





--select * from STREAMS_AND_TASKS.SNAPSHOTS.NATION;


