select
    portfolio_id,
    security_id,
    sector,
    as_of_date,
    sum(position_value) as total_position_value
from {{ ref('int_position_valuations') }}
group by
    portfolio_id,
    security_id,
    sector,
    as_of_date