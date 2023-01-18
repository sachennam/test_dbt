
{% snapshot mock_orders %}
    {{
        config(
            target_database = 'pc_dbt_db',
            target_schema = 'nation_snapshot'
            unique_key='n_nationkey',
            strategy='timestamp',
            updated_at='update_timestamp'
        )
    }}

    select * from pc_dbt_db.dbt_amorton.mock_orders
 {% endsnapshot %}


 -- select * from STREAMS_AND_TASKS.SCD.NATION

 -- select * from STREAMS_AND_TASKS.SCD.NATION;