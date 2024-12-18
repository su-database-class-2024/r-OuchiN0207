SELECT country.country, COUNT(customer.customer_id) AS total_customers, SUM(payment.amount) AS total_sales
FROM country
JOIN city ON country.country_id = city.country_id
JOIN address ON city.city_id = address.city_id
JOIN customer ON address.address_id = customer.address_id
JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY country.country;