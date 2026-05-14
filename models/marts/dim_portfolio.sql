select
    portfolio_id,
    portfolio_name,
    manager_name,
    created_at
from {{ ref('stg_portfolios') }}