WITH liczba_tweetow AS(
SELECT user_id,
COUNT(tweet_id) AS ilosc_tweetow
FROM tweets
WHERE tweet_date >'2022-01-01'
AND tweet_date <'2023-01-01'
GROUP BY user_id
)

SELECT
ilosc_tweetow, COUNT (user_id) AS liczba_uzytkownikow
FROM liczba_tweetow
GROUP BY ilosc_tweetow
ORDER BY ilosc_tweetow
