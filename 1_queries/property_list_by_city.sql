SELECT properties.id, title, cost_per_night, AVG(rating)
FROM properties INNER JOIN property_reviews
ON properties.id = property_id
WHERE city LIKE '%Vancouver%'
GROUP BY properties.id, title, cost_per_night
HAVING AVG(rating) >= 4
ORDER BY cost_per_night
limit 10;