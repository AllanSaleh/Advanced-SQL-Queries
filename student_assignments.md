# Lesson 4: Advanced SQL Queries - Student Assignments

---

## In-Class Assignment 1: JOIN Practice (5 minutes)

**Task**: Write a query to find users and their account information (email) along with how many people they follow.

**Requirements**:
- Show username, email, and count of people they follow
- Include users even if they don't follow anyone
- Order by follower count (descending)
- Limit to top 5 users

**Expected Output**: A table with username, email, and following count.

**Hint**: You'll need to JOIN users, accounts, and following tables.

---

## In-Class Assignment 2: Subquery Practice (5 minutes)

**Task**: Find posts that have more comments than the average number of comments per post.

**Requirements**:
- Show username, post caption, and comment count
- Only include posts with above-average comments
- Order by comment count (descending)
- Limit to top 5 posts

**Expected Output**: A table showing posts with above-average engagement.

**Hint**: You'll need a subquery to calculate the average reactions per post.

---