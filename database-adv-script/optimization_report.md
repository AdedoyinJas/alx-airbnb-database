# Task 4 – Optimize Complex Queries

## Objective
Refactor complex queries to improve performance by reducing execution time and leveraging indexes.

## Initial Query
- Retrieved all bookings with user, property, and payment details.
- Performed multiple joins without filters.
- Inefficient on large datasets (full table scans observed with EXPLAIN).

## Analysis
- Bottlenecks: Large table scans, joins on non-indexed columns.
- Payments table might have NULL values for some bookings (hence LEFT JOIN).

## Optimizations Applied
1. Added WHERE filter for upcoming bookings (`b.check_in_date >= CURRENT_DATE`) to reduce data volume.
2. Utilized indexes on `bookings.user_id`, `bookings.property_id`, `payments.booking_id`.
3. Retained LEFT JOIN only for payments (optional data).

## Results
- Execution time reduced with fewer rows scanned.
- Query now benefits from indexes, improving performance for large datasets.

## Files
- `perfomance.sql` – contains initial and optimized queries.
