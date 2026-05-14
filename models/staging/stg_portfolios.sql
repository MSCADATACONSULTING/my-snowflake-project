select
    portfolio_id,
    portfolio_name,
    manager_name,
    created_at
from {{ source('finance', 'raw_portfolios') }}