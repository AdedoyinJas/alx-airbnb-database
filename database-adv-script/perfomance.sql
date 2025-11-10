-- =====================================
-- Optimized Query
-- =====================================

SELECT
    b.id AS booking_id,
    b.check_in_date,
    b.check_out_date,
    u.id AS user_id,
    u.name AS user_name,
    u.email AS user_email,
    p.id AS property_id,
    p.name AS property_name,
    p.location AS property_location,
    pay.id AS payment_id,
    pay.amount AS payment_amount,
    pay.status AS payment_status
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON pay.booking_id = b.id
WHERE b.check_in_date >= CURRENT_DATE; -- only fetch upcoming bookings
