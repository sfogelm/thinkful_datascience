SELECT Date, MaxTemperatureF, ZIP
FROM weather
ORDER BY MaxTemperatureF desc
LIMIT 1

SELECT start_station, COUNT(*) count
FROM trips
GROUP BY start_station

SELECT trip_id, duration
FROM trips
ORDER BY duration
LIMIT 1

SELECT end_station, AVG(duration) avg
FROM trips
GROUP BY end_station



