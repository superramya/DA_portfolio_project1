/* Getting total rides of member and casual by week days */

SELECT member_casual, day_of_week, COUNT(ride_id) as total_rides
FROM biketrip_jandata
GROUP BY member_casual, day_of_week;


/* Getting the rides of members and casuals on Wednesdays */

SELECT member_casual, COUNT(ride_id) as total_rides, day_of_week
FROM biketrip_jandata
WHERE day_of_week = 'Wednesday'
GROUP BY member_casual, day_of_week;

/* How to use partion by in a table */

SELECT member_casual, day_of_week, 
	COUNT(ride_id) OVER (PARTITION BY day_of_week) as total_rides
FROM biketrip_jandata
WHERE member_casual = 'member'

/* Filtering the data of casual riders */

SELECT member_casual, ride_len
FROM biketrip_jandata
WHERE member_casual = 'casual'

/* How to extract time from datetime - formatting */

SELECT member_casual,
	CONVERT(VARCHAR(12), ride_len ,108) 'avg_len'
FROM biketrip_jandata
WHERE member_casual = 'casual'

/* Using case statements */

SELECT member_casual, day_of_week, COUNT(ride_id) as total_rides,
CASE
	WHEN day_of_week = 'Sunday' Then 'Funride'
	WHEN day_of_week = 'Saturday' Then 'Lazyride'
	ELSE 'Commute'
END
FROM biketrip_jandata
GROUP BY day_of_week, member_casual
ORDER BY total_rides


