USE airbnb_barcelona;

SELECT 'listings_dup_pk' AS check_name, COUNT(*) - COUNT(DISTINCT id) AS failures FROM listings
UNION ALL
SELECT 'reviews_dup_pk', COUNT(*) - COUNT(DISTINCT id) FROM reviews
UNION ALL
SELECT 'neighbourhoods_dup_pk', COUNT(*) - COUNT(DISTINCT neighbourhood) FROM neighbourhoods;

SELECT 'calendar_dup_pk' AS check_name,
       COUNT(*) - COUNT(DISTINCT listing_id, date) AS failures
FROM calendar;

SELECT 'listings_null_pk' AS check_name, COUNT(*) AS failures FROM listings WHERE id IS NULL
UNION ALL
SELECT 'reviews_null_pk', COUNT(*) FROM reviews WHERE id IS NULL
UNION ALL
SELECT 'neighbourhoods_null_pk', COUNT(*) FROM neighbourhoods WHERE neighbourhood IS NULL;

SELECT 'calendar_orphan_listings' AS check_name, COUNT(*) AS failures
FROM calendar c
LEFT JOIN listings l ON c.listing_id = l.id
WHERE l.id IS NULL;

SELECT 'reviews_orphan_listings' AS check_name, COUNT(*) AS failures
FROM reviews r
LEFT JOIN listings l ON r.listing_id = l.id
WHERE l.id IS NULL;

SELECT 'listings_orphan_neighbourhoods' AS check_name, COUNT(*) AS failures
FROM listings l
LEFT JOIN neighbourhoods n ON l.neighbourhood = n.neighbourhood
WHERE l.neighbourhood IS NOT NULL AND n.neighbourhood IS NULL;

SELECT COUNT(*) AS listings_baseline FROM listings;

SELECT COUNT(*) AS listings_joined_calendar
FROM listings l
JOIN calendar c ON l.id = c.listing_id;

SELECT COUNT(*) AS listings_joined_reviews
FROM listings l
JOIN reviews r ON l.id = r.listing_id;

SELECT COUNT(*) AS catastrophic_join
FROM listings l
JOIN calendar c ON l.id = c.listing_id
JOIN reviews r ON l.id = r.listing_id;

SELECT COUNT(DISTINCT id) AS true_listing_count FROM listings;

SELECT COUNT(DISTINCT l.id) AS distinct_after_join
FROM listings l
JOIN calendar c ON l.id = c.listing_id;

SELECT COUNT(*) AS rows_after_join
FROM listings l
JOIN calendar c ON l.id = c.listing_id;

SELECT ROUND(AVG(price), 2) AS avg_price_correct FROM listings;

SELECT ROUND(AVG(l.price), 2) AS avg_price_biased
FROM listings l
JOIN calendar c ON l.id = c.listing_id;

SELECT listing_id, COUNT(*) AS review_count
FROM reviews
GROUP BY listing_id
ORDER BY review_count DESC
LIMIT 10;

SELECT l.id, COUNT(r.id) AS inflated_review_count
FROM listings l
JOIN reviews r ON l.id = r.listing_id
JOIN calendar c ON l.id = c.listing_id
GROUP BY l.id
ORDER BY inflated_review_count DESC
LIMIT 10;