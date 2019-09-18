INSERT INTO users (name, email, password)
VALUES
('max wong', 'max@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('laura tan', 'laura@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('joseph tu', 'joseph@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');


INSERT INTO properties (title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, street, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, city, post_code, owner_id)
VALUES 
('big house', 'its a big ass house', 'thumbnail.com', 'cover.com', 3000, 3070, 30, 10, 10, 'Canada', 'Coquitlam', 'V2A5C7', 1),
('apartment', 'small asian apartment', 'apartment-thumbnail.com', 'apartment-cover.com', 9999, 250, 1, 1, 1, 'Taiwan', 'Taipei', 'T3JT22', 2),
('small house', 'its a pretty small house', 'small-thumbnail.com', 'small-cover.com', 1500, 2222, 3, 2, 2, 'Korea', 'Busan', 'B12B34', 3);

INSERT INTO rates (start_date, end_date, cost_per_night, property_id) 
VALUES
('2019-03-03', '2019-03-04', 3000, 1),
('2019-02-10', '2019-02-11', 9999, 2),
('2019-10-09', '2019-10-15', 1500, 3);

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES
('2019-03-03', '2019-03-04', 3, 1), --user 1 reserve property 3
('2019-02-10', '2019-02-11', 1, 2), --user 2 reserve property 1
('2019-10-09', '2019-10-15', 2, 3); -- user 3 reserver property 2

INSERT INTO guest_reviews (guest_id, owner_id, reservation_id, rating, message) 
VALUES
(1, 3, 1, 5, 'this guest is okay'),
(2, 1, 2, 3, 'this guest is rude'),
(3, 2, 3, 0, 'this guest is anti-social');

INSERT INTO property_reviews (guest_id, reservation_id, property_id, rating, message)
VALUES
(1, 1, 3, 5, 'Small place is awesome'),
(2, 2, 1, 1, 'I got lost in the big house'),
(3, 3, 2, 2, 'Apartment too small');