# Database Seed Script

## Overview
This directory contains the SQL script (seed.sql) used to populate the Airbnb database with sample data.

## Purpose
To simulate real-world data for testing and validating the database schema.

## Entities Seeded
- *Users*: Sample guests and hosts.
- *Properties*: Example listings associated with hosts.
- *Bookings*: Reservation data connecting users and properties.
- *Payments*: Transaction records linked to bookings.
- *Reviews*: User feedback for properties.
- *Messages*: Communication between guests and hosts.

## Usage
Run the script in your SQL environment after creating the database schema:
```bash
psql -U <username> -d <database_name> -f seed.sql