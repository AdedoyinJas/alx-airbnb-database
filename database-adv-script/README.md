# ALX Airbnb Database – Advanced SQL Queries

## 📘 Project: Unleashing Advanced Querying Power

This project focuses on mastering **SQL joins**, **subqueries**, **aggregations**, and **optimizations** using an Airbnb-like database schema.

### Files
- `joins_queries.sql` – contains all join-based queries (INNER, LEFT, FULL OUTER)
- `subqueries.sql` – contains all subquery exercises
- `README.md` – overview of project objectives and tasks

### 🧠 Concepts Covered
- INNER JOIN, LEFT JOIN, FULL OUTER JOIN
- Correlated and Non-Correlated Subqueries
- Query Optimization and Efficiency
- SQL best practices for scalable systems

### 🧩 Example Tables
- `users` (id, name, email, created_at)
- `bookings` (id, user_id, property_id, check_in_date, check_out_date)
- `properties` (id, name, location, price)
- `reviews` (id, property_id, comment, rating)

### 💡 Notes
- FULL OUTER JOIN simulated using UNION since MySQL doesn’t support it directly.
- Queries are optimized for readability and performance.

### 🧠 Task 1 – Practice Subqueries

**Objective:**  
Write both correlated and non-correlated subqueries.

**Queries:**
1. Non-correlated subquery: find properties with an average rating > 4.0
2. Correlated subquery: find users who have made more than 3 bookings
