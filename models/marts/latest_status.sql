select
    '{{ get_highest_value("int_orders_pivoted", "CREDIT_CARD_AMOUNT") }}' as max_order_amount
