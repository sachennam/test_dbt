
{% snapshot nation %}
    {{
        config(
            target_database = 'STREAMS_AND_TASKS',
            target_schema = 'SNAPSHOTS',
            unique_key='n_nationkey',
            strategy='timestamp',
            updated_at='update_timestamp',
            invalidate_hard_deletes = true
        )
    }}

    select * from STREAMS_AND_TASKS.SCD.NATION
 {% endsnapshot %}


--select * from STREAMS_AND_TASKS.SNAPSHOTS.NATION;

