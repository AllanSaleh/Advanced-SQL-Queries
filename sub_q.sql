-- GET users and their following count

SELECT u.username, COUNT(f.follower_id) as follower_count
FROM users u
LEFT JOIN following f ON f.followed_id = u.id
GROUP BY u.username
ORDER BY follower_count DESC;

SELECT AVG(follower_count)
FROM (
  SELECT u.username, COUNT(f.follower_id) as follower_count
  FROM users u
  LEFT JOIN following f ON f.followed_id = u.id
  GROUP BY u.username
  ORDER BY follower_count DESC
);


----------------------------------------------

-- Find users who have a follower count that is greater than the average follower count


SELECT u.username, COUNT(f.follower_id) as following_count
FROM users u
LEFT JOIN following f ON f.follower_id = u.id
GROUP BY u.username
HAVING following_count > (
  SELECT AVG(follower_count)
  FROM (
    SELECT u.username, COUNT(f.follower_id) as follower_count
    FROM users u
    LEFT JOIN following f ON f.follower_id = u.id
    GROUP BY u.username
    ORDER BY follower_count DESC
  )
)
ORDER BY following_count DESC;