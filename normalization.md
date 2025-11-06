# Database Normalization (Airbnb Clone)

This document explains how the Airbnb database schema was normalized up to the Third Normal Form (3NF).

---

## First Normal Form (1NF)
- Each table has a primary key (uuid).
- All columns contain atomic values (no repeating groups).
- Example: Each user has a single email and phone number.

✅ The schema satisfies 1NF.

---

## Second Normal Form (2NF)
- All non-key attributes depend on the whole primary key.
- Each table has a single-column primary key, so no partial dependency exists.

✅ The schema satisfies 2NF.

---

## Third Normal Form (3NF)
- No transitive dependencies exist between non-key attributes.
- Non-key columns depend only on the primary key.
- Foreign keys (host_id, user_id, property_id, etc.) are used for relationships, reducing redundancy.

✅ The schema satisfies 3NF.

---

## Summary
The Airbnb database schema meets all normalization principles:
- *1NF:* Atomic columns and unique primary keys.
- *2NF:* No partial dependencies.
- *3NF:* No transitive dependencies.

This normalization ensures efficient data storage, integrity, and consistency.