SELECT u.username, a.email, COUNT(f.follower_id) AS follower_count
FROM accounts a  
LEFT OUTER JOIN users u ON a.user_id = u.id
LEFT OUTER JOIN following f ON f.follower_id = u.id
GROUP BY u.username
ORDER BY follower_count DESC
LIMIT 5;