SELECT
    customers.customer_name AS customer_name,
    PRINTF('$%.2f', SUM(subscriptions.price * subscriptions.subscription_length)) AS total_amount_due
FROM
    orders
JOIN
    customers ON orders.customer_id = customers.customer_id
JOIN
    subscriptions ON orders.subscription_id = subscriptions.subscription_id
WHERE
    orders.order_status = 'unpaid'
    AND subscriptions.description = 'Fashion Magazine'
GROUP BY
<<<<<<< HEAD
    customers.customer_name;
=======
    customers.customer_name;
>>>>>>> 06e5141385fa9b742c193df3554906702c343ce0
