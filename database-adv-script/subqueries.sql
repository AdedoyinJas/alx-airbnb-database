-- =========================================
-- 1. NON-CORRELATED SUBQUERY
-- =========================================
-- Find all properties where the average rating is greater than 4.0

SELECT 
    p.id AS property_id,
    p.name AS property_name,
    p.location,
    AVG(r.rating) AS avg_rating
FROM properties p
JOIN reviews r ON p.id = r.property_id
GROUP BY p.id, p.name, p.location
HAVING AVG(r.rating) > 4.0;


-- =========================================
-- Alternative using a subquery
-- =========================================

SELECT 
    id AS property_id,
    name AS property_name,
    location
FROM properties
WHERE id IN (
    SELECT property_id
    FROM reviews
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);


-- =========================================
-- 2. CORRELATED SUBQUERY
-- =========================================
-- Find users who have made more than 3 bookings

SELECT 
    u.id AS user_id,
    u.name AS user_name,
    u.email
FROM users u
WHERE (
    SELECT COUNT(*)
    FROM bookings b
    WHERE b.user_id = u.id
) > 3;
