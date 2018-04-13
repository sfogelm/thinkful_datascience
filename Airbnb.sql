
SELECT max(price) from listings 

SELECT SUM(reviews_per_month) review_count, neighbourhood 
FROM listings
GROUP BY neighbourhood ORDER BY review_count desc 
LIMIT 10



 
 WITH review_short
 AS(
 SELECT listing_id , COUNT(*) total_bookings
 FROM reviews 
 GROUP BY listing_id)
 
 SELECT AVG(price) avg_price, total_bookings
 FROM listings
 JOIN review_short
 ON listings.id = review_short.listing_id
 GROUP BY listings.id
 ORDER BY total_bookings desc
 LIMIT 1
 
 WITH review_short
 AS(
 SELECT listing_id , date, COUNT(*) total_bookings
 FROM reviews 
 GROUP BY listing_id, date)
 
 SELECT AVG(price) avg_price, date 
 FROM listings
 JOIN review_short
 ON listings.id = review_short.listing_id
 GROUP BY listings.id
 ORDER BY avg_price desc 
 LIMIT 10
 
 WITH review_short
 AS(
 SELECT listing_id , date, COUNT(*) total_bookings
 FROM reviews 
 GROUP BY listing_id, date)
 
 SELECT total_bookings, date 
 FROM listings
 JOIN review_short
 ON listings.id = review_short.listing_id
 GROUP BY listings.id
 ORDER BY total_bookings desc 
 LIMIT 10