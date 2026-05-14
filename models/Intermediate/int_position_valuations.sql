with positions as (
    select * from {{ ref('stg_positions') }}
),
prices as (
    select * from {{ ref('stg_prices') }}
)

select
    p.position_id,
    p.portfolio_id,
    p.security_id,
    p.quantity,
    p.as_of_date,
    pr.close_price,
    p.quantity * pr.close_price as position_value
from positions p
left join prices pr
    on p.security_id = pr.security_id
   and p.as_of_date = pr.price_date