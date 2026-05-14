select
    portfolio_id,
    security_id,
    as_of_date,
    sum(position_value) as total_position_value,
    sum(position_value)
        / sum(sum(position_value))
            over(partition by portfolio_id)
        as exposure_pct
from {{ ref('int_position_valuations') }}
group by
    portfolio_id,
    security_id,
    as_of_date