# Task 6 – Monitor and Refine Database Performance

## Objective
Continuously monitor query performance and refine database schema to improve efficiency.

## Monitoring Approach
- Used `EXPLAIN ANALYZE` to monitor execution plans for frequently used queries on bookings and users tables.
- Focused on queries filtering by date and aggregating user bookings.

## Observed Bottlenecks
- Queries without indexes scanned entire table.
- Joins on large datasets caused high row scans and slower execution.
- Aggregations on non-indexed columns were slow.

## Schema Adjustments
- Added indexes on `bookings_partitioned.user_id`, `bookings_partitioned.property_id`, and `check_in_date`.
- Used partitioned tables to reduce scanning unnecessary rows.
- Considered using materialized views for aggregated results (future improvement).

## Results
- Queries with indexes ran significantly faster (less row scanning and lower execution cost).
- Partitioning improved performance for date-range queries.
- Joins and aggregations on large tables now execute more efficiently.

## Files
- `performance_monitoring.md` – contains analysis, optimizations, and observed improvements.
