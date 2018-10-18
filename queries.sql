"Write a SQL query to return the top 20 video/user painings. In other words show
which videos have been re-watched most by a single user"

SELECT subscribers.username, videos.title, COUNT(subscribers.stream_id) FROM subscribers
INNER JOIN streams
ON subscribers.id = streams.subscriber_id
INNER JOIN videos
ON streams.video_id = videos.id
GROUP BY videos.title, subscribers.username
ORDER BY COUNT(subscribers.stream_id) DESC LIMIT 20;
