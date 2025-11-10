-- =====================================
-- Partition the Booking table by start_date
-- =====================================

-- Step 1: Create a new partitioned table
CREATE TABLE bookings_partitioned (
    id INT PRIMARY KEY,
    user_id INT,
    property_id INT,
    check_in_date DATE,
    check_out_date DATE,
    payment_id INT
) PARTITION BY RANGE (check_in_date);

-- Step 2: Define partitions
CREATE TABLE bookings_2025_q1 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-01-01') TO ('2025-03-31');

CREATE TABLE bookings_2025_q2 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-04-01') TO ('2025-06-30');

CREATE TABLE bookings_2025_q3 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-07-01') TO ('2025-09-30');

CREATE TABLE bookings_2025_q4 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-10-01') TO ('2025-12-31');

-- Step 3: Move existing data (example)
INSERT INTO bookings_partitioned
SELECT * FROM bookings;

-- Step 4: Test query performance on partitioned table
SELECT *
FROM bookings_partitioned
WHERE check_in_date BETWEEN '2025-04-01' AND '2025-04-30';
