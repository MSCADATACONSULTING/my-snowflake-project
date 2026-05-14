select
    security_id,
    ticker,
    asset_class,
    sector
from {{ source('finance', 'raw_securities') }}