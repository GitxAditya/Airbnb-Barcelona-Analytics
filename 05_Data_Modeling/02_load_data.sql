USE airbnb_barcelona;

SET FOREIGN_KEY_CHECKS = 0;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/neighbourhoods_clean.csv'
IGNORE INTO TABLE neighbourhoods
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(neighbourhood, neighbourhood_group);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/listings_clean.csv'
IGNORE INTO TABLE listings
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id, name, host_id, host_name, @superhost, neighbourhood, latitude, longitude,
 room_type, property_type, accommodates, bedrooms, beds, price,
 minimum_nights, maximum_nights, availability_365, number_of_reviews,
 review_scores_rating, @last_scraped)
SET host_is_superhost = CASE WHEN @superhost = 'True' THEN 1 ELSE 0 END,
    last_scraped      = STR_TO_DATE(@last_scraped, '%Y-%m-%d');

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/calendar_clean.csv'
IGNORE INTO TABLE calendar
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(listing_id, @dt, @avail, price, minimum_nights, maximum_nights)
SET date      = STR_TO_DATE(@dt, '%Y-%m-%d'),
    available = CASE WHEN @avail = 'True' THEN 1 ELSE 0 END;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/reviews_clean.csv'
IGNORE INTO TABLE reviews
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id, listing_id, @dt, reviewer_id, reviewer_name, comments)
SET date = STR_TO_DATE(@dt, '%Y-%m-%d');

SET FOREIGN_KEY_CHECKS = 1;

SELECT 'neighbourhoods' AS table_name, COUNT(*) AS rows_loaded FROM neighbourhoods
UNION ALL SELECT 'listings', COUNT(*) FROM listings
UNION ALL SELECT 'calendar', COUNT(*) FROM calendar
UNION ALL SELECT 'reviews',  COUNT(*) FROM reviews;

