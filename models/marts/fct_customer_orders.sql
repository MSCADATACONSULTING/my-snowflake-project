with customer_sales as (
    select
        c.customer_id,
        c.customer_name,
        c.country,
        count(o.order_id) as total_orders,
        sum(o.order_amount) as total_sales
        
    from {{ ref('stg_customers') }} c
    left join {{ ref('stg_orders') }} o
        on c.customer_id = o.customer_id
    group by
        c.customer_id,
        c.customer_name,
        c.country
)

select
    *,
    {{ audit_timestamp() }} as created_at,
    1 AS TEST
from customer_sales