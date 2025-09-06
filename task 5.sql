SELECT COUNT(*) AS total_listens
FROM fact_listenings f
JOIN dim_user u ON f.user_sk = u.user_sk
JOIN dim_platform p ON f.platform_sk = p.platform_sk
WHERE  p.platform_name = 'Android'
--узнаем количество пользователей с Android

SELECT t.genre, AVG(f.duration_seconds) AS avg_duration
FROM fact_listenings f
JOIN dim_track t ON f.track_sk = t.track_sk
GROUP BY t.genre
ORDER BY avg_duration DESC;
--выявляем среднюю длительность прослушивания по жанрам

SELECT t.genre, COUNT(*) AS listens
FROM fact_listenings f
JOIN dim_track t ON f.track_sk = t.track_sk
WHERE f.user_sk = 'A174907'
GROUP BY t.genre
ORDER BY listens DESC;
--узнаём любимый жанр конкретного пользователя по его ID


