-- Show username, post caption, and comment count
-- Only include posts with above-average comments
-- Order by comment count (descending)
-- Limit to top 5 posts

SELECT COUNT(comment) AS comment_count
FROM comments
GROUP BY post_id


SELECT AVG(comment_count)
FROM (
  SELECT COUNT(comment) AS comment_count
  FROM comments
  GROUP BY post_id
)


SELECT u.username, p.caption, COUNT(c.comment) AS comment_count
FROM users u
JOIN posts p ON p.user_id = u.id
JOIN comments c ON p.id = c.post_id
GROUP BY u.username
HAVING comment_count > (
  SELECT AVG(comment_count)
  FROM (
    SELECT COUNT(comment) AS comment_count
    FROM comments
    GROUP BY post_id
  )
);