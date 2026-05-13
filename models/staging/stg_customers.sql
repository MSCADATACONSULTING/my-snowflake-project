select
    customer_id,
    customer_name,
    country
from {{ source('ecommerce', 'raw_customers') }}