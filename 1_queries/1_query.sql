/* Query #1*/
SELECT id, name , email, password
FROM users
WHERE email='tristanjacobs@gmail.com';

/* Query #2*/
SELECT avg(end_date-start_date) as average_duration
FROM reservations;

/* Query #3*/
SELECT properties, avg(property_reviews.rating) as average_rating
FROM properties
JOIN property_reviews ON properties.id = property_id
WHERE city LIKE '%ancouv%'
GROUP BY properties.id
HAVING avg(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 10;

/* Query #4*/
SELECT properties.city, count(reservations) as total_reservations
FROM reservations
JOIN properties ON properties.id = property_id
GROUP BY properties.city
ORDER BY count(reservations) DESC;

/* Query #5*/
SELECT properties, reservations, avg(property_reviews.rating)
FROM reservations
JOIN properties ON properties.id = property_id
JOIN property_reviews ON reservations.id = reservation_id
WHERE reservations.guest_id = 1 AND reservations.end_date < now()::date
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;




