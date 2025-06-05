select
    id as payment_id,
    order_id as order_id,
    payment_method as payment_method,
    status,

    -- amount is stored in cents, convert it to dollars
   {{ cents_to_dollars('amount', 4) }} as amount,
    created_at as created_at

from {{ source ('stripe', 'payment')}}