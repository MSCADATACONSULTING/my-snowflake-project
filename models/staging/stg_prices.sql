select
    security_id,
    price_date,
    close_price,
    updated_at
from {{ source('finance', 'curated_prices') }}