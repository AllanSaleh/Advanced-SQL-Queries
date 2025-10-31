SELECT users.username, posts.caption, posts.created_at
FROM posts
INNER JOIN users ON posts.user_id = users.id;

SELECT u.username, p.caption, p.created_at
FROM users u
INNER JOIN posts p ON p.user_id = u.id;

SELECT users.username, posts.caption, posts.created_at
FROM users
INNER JOIN posts ON users.id = posts.user_id;


-- LEFT OUTER JOIN - will grab all users, even those who havent posted
SELECT u.username, COUNT(p.id) as post_count
FROM users u
LEFT JOIN posts p ON u.id = p.user_id
GROUP BY u.username
ORDER BY post_count DESC
LIMIT 10;


-- I want to see posts captions, with the username of who posted it, and how many comments the post got

-- step 1 select all columns across all tables 
-- step 2 specify starting From tablename
-- step 3 Join onto the required tables for data retrieval
-- step 4 Group by because retrieving data alongside calculated number (aggregate function)
SELECT u.username, p.caption, COUNT(c.id) as comment_count
FROM posts p
JOIN users u ON p.user_id = u.id
JOIN comments c ON p.id = c.post_id
GROUP BY u.username, p.caption
ORDER BY comment_count DESC;


-- See all posts caption and username from user_id 23
SELECT u.username, p.caption
FROM users u
JOIN posts p ON p.user_id = u.id
WHERE u.id = 23;
