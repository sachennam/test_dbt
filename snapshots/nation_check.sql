    
{% snapshot nation_check %}
    {{
        config(
            target_database = 'STREAMS_AND_TASKS',
            target_schema = 'SNAPSHOTS',
            strategy = 'check',
            unique_key='n_nationkey',
            check_cols = ["N_COMMENT"],
            invalidate_hard_deletes = True
        )
    }}

    select * from STREAMS_AND_TASKS.SCD.NATION
 {% endsnapshot %}
