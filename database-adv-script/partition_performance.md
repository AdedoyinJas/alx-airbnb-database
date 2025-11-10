# Task 5 – Partitioning Large Tables

## Objective
Implement table partitioning to optimize queries on large datasets, specifically the Booking table.

## Partitioning Approach
- Created a new table `bookings_partitioned` using **RANGE partitioning** on `check_in_date`.
- Split bookings into quarterly partitions (Q1–Q4) for 2025.

## Performance Test
- Query: Fetch bookings for April 2025.
- Before partitioning: Full table scan on all bookings.
- After partitioning: Only scanned `bookings_2025_q2` partition.

## Results
- Significant reduction in the number of rows scanned.
- Faster query execution for date-specific queries.
- Easier to manage large datasets and maintain indexes per partition.

## Files
- `partitioning.sql` – contains SQL to create partitioned table and test query.
- `partition_performance.md` – contains description, methodology, and observed performance improvements.
