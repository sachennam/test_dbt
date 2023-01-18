
{% snapshot mock_orders %}
    {{
        config(
            target_database = 'pc_dbt_db',
            target_schema = 'dbt_amorton_snapshot',
            unique_key='order_id',
            strategy='timestamp',
            updated_at='updated_at'
        )
    }}

    select * from pc_dbt_db.dbt_amorton.mock_orders
 {% endsnapshot %}


