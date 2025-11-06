# Database Schema (DDL)

This file defines the Airbnb Clone database structure using SQL DDL commands.

## Overview
The schema defines six main entities:
- *Users*
- *Properties*
- *Bookings*
- *Payments*
- *Reviews*
- *Messages*

Each table includes primary keys, foreign keys, and constraints for data integrity.

## Key Features
- Ensures data consistency through foreign key relationships.
- Uses CHECK constraints for valid roles, status, and rating values.
- Adds indexes to improve query performance.

## Normalization
The schema follows Third Normal Form (3NF) to avoid redundancy and maintain efficiency.