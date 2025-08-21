SELECT 
    user_id,
    track_id,
    listen_timestamp
FROM tracks
WHERE listen_timestamp >= CURRENT_DATE - INTERVAL '30 days';
--показывает историю прослушиваний пользователя за месяц. Здесь все расчитывается в рамках одной таблицы измерений

SELECT 
    a.name AS artist_name,
    COUNT(DISTINCT al.album_id) AS album_count
FROM Artist 
JOIN Album  ON a.artist_id = al.artist_id
GROUP BY a.name
ORDER BY album_count DESC;
--выяснием сколько альбомов у конкретного исполнителя

SELECT 
    u.username,
    t.genre,
    COUNT(*) AS genre_count
FROM tracks p
JOIN users u ON p.user_id = u.user_id
JOIN tracks t ON p.track_id = t.track_id
GROUP BY u.name, t.genre
ORDER BY genre_count DESC;
--через таблицы User и Tracks выявлем любимый жанр пользователя

