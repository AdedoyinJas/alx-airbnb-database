-- Seed data for Users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
  ('uuid1', 'John', 'Doe', 'john@example.com', 'hashedpass1', '1234567890', 'guest', NOW()),
  ('uuid2', 'Jane', 'Smith', 'jane@example.com', 'hashedpass2', '0987654321', 'host', NOW());

-- Seed data for Properties
INSERT INTO properties (property_id, host_id, name, description, location, price_per_night, created_at, updated_at)
VALUES
  ('uuid3', 'uuid2', 'Cozy Apartment', 'A nice place near the beach', 'Lagos, Nigeria', 250.00, NOW(), NOW());

-- Seed data for Bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
  ('uuid4', 'uuid3', 'uuid1', '2025-11-10', '2025-11-15', 1250.00, 'confirmed', NOW());

-- Seed data for Payments
INSERT INTO payments (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
  ('uuid5', 'uuid4', 1250.00, NOW(), 'credit_card');

-- Seed data for Reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment, created_at)
VALUES
  ('uuid6', 'uuid3', 'uuid1', 5, 'Amazing stay, very clean and comfortable!', NOW());

-- Seed data for Messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
  ('uuid7', 'uuid1', 'uuid2', 'Hello, is the apartment available next weekend?', NOW());