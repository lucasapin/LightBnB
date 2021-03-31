INSERT INTO users (name, email, password) 
VALUES 
('Lucas Pinheiro', 'lucaspinheiro@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Diogo Pinheiro', 'diogopinheiro@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'), 
('Bruno Pinheiro', 'brunopinheiro@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active) 
VALUES 
(1,'title','description','thumbnail photo', 'cover photo', 100, 2, 3, 3, 'Brasil', '34 Mario Assayag', 'Manaus', 'Amazonas', '69037-000', true),
(2,'title','description','thumbnail photo', 'cover photo', 150, 3, 4, 4, 'Brasil', '38 Mario Assayag', 'Manaus', 'Amazonas', '69037-000', true),
(3,'title','description','thumbnail photo', 'cover photo', 200, 4, 5, 5, 'Brasil', '42 Mario Assayag', 'Manaus', 'Amazonas', '69037-000', true);

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES 
('2021-03-30', '2021-03-31', 2, 1),
('2021-03-30', '2021-03-31', 3, 2),
('2021-03-30', '2021-03-31', 1, 3);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES 
(1,2,1, 10, 'Exceptional'),
(2,3,2, 7, 'Average'), 
(3,1,3, 4, 'Horrible'); 

