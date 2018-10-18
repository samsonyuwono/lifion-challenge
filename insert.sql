INSERT INTO subscribers (stream_id, username, email_address)
VALUES( 1, "A", "test@email.com"), ( 1, "B", "test@email.com"),
( 3, "C", "test@email.com"), ( 4, "D", "test@email.com"), ( 5, "E", "test@email.com");

INSERT INTO streams (video_id, subscriber_id, length_of_stream)
VALUES( 1, 1, 123), ( 2, 2, 123), ( 2, 2, 123), ( 1, 1, 123), ( 1, 1, 123),
( 2, 2, 123), ( 1, 2, 123), (1, 1, 123), ( 1, 1, 123), ( 3, 3, 123);

INSERT INTO videos (stream_id, video_license_id, title, length)
VALUES(1, 1, "A", 123), (2, 2, "B", 123), (3, 3, "C", 123), (4, 4, "B", 123), (5, 5, "C", 123),
(3, 5, "C", 123), (3, 5, "C", 123);
