select
    position_id,
    portfolio_id,
    security_id,
    quantity,
    as_of_date,
    updated_at
from {{ source('finance', 'curated_positions') }}