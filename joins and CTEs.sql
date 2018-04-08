
with rainy as 
(SELECT 
date
From weather
WHERE events = 'Rain'
GROUP BY 1
)

SELECT
trip_id,
duration,
DATE(start_date) trip_date
FROM trips
JOIN rainy
on rainy.date = trip_date
ORDER BY duration DESC
LIMIT 3

SELECT station_id, COUNT(*) count
FROM status
WHERE docks_available = 0
GROUP BY station_id
ORDER BY count desc
LIMIT 1

SELECT start_station, dockcount, count(*)
FROM stations
JOIN trips
ON stations.name = trips.start_station
GROUP BY start_station, dockcount
ORDER BY dockcount

with rainy as 
(SELECT 
date
From weather
WHERE events = 'Rain'
GROUP BY 1
),

rain_trips as (
SELECT
trip_id,
duration,
DATE(start_date) trip_date
FROM trips
JOIN rainy
on rainy.date = trip_date
ORDER BY duration DESC
)

SELECT 
trip_date,
max(duration)
from rain_trips
GROUP BY 1



