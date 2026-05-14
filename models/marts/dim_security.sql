select
    security_id,
    ticker,
    asset_class,
    sector
from {{ ref('stg_securities') }}