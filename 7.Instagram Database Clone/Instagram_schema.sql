-- insert the data ig_clone.data
-- load by using commend prompt
--- source path.sql
--  source /MYSQL_PRACTICE/Joins and Relationships\INSTAGRAM_DATA/ig_clone_data.sql
SHOW DATABASES;
USE ig_clone;

SHOW TABLES;
SELECT COUNT(*) FROM likes;


-- 1.We want ro reward our users who have been around the longest 
-- FINDING the 5 oldest users

SELECT * 
FROM users
ORDER BY created_at
LIMIT 5;

SELECT * 
FROM users
ORDER BY created_at 
LIMIT 5 ;

-- 2. What day of the week do most users register on ?
-- here we need to figure out when to schedule an ad campgain

SELECT 
     DAYNAME(created_at) AS day,
     count(*) as total
FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 2;

-- 3.Identify Incative Users (USERS with no photo)
-- We want to target our incative users with an email campaign 
-- find the users who have never posted a photo

SELECT username
FROM users
LEFT JOIN photos
	ON users.id=photos.user_id
WHERE photos.id IS NULL;

-- 4.IDENTIFY MOST POPULAR PHOTO( AND USER WHO CREATED IT)
-- we runnning a new contest to see who can get the most likes on single photos
-- WHO WON??!!
SELECT 
    username,
	photos.id,
    photos.image_url, 
    count(likes.user_id) AS total
FROM photos
INNER JOIN likes 
    ON likes.photo_id=photos.id
INNER JOIN users
    ON photos.user_id = users.id
GROUP BY photos.id 
ORDER BY total DESC
LIMIT 1;


-- 5.CALCULATE AVG NUMBER OF PHOTOS PER USER
-- Our investors want to know how many times does the average user post

-- total number of photos / total number of users
SELECT 
	(SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS avg;
    
-- 6. most populat hashtags
-- A brand wants to know  which hashtags to use in a post
-- What are the top 5 most commonly used hashtags

SELECT 
	tags.tag_name,
	COUNT(*) AS total
FROM photo_tags
    JOIN tags
      ON photo_tags.tag_id= tags.id
GROUP BY tags.id
ORDER BY total DESC
LIMIT 5;

 
SELECT tags.tag_name, 
       Count(*) AS total 
FROM   photo_tags 
       JOIN tags 
         ON photo_tags.tag_id = tags.id 
GROUP  BY tags.id 
ORDER  BY total DESC 
LIMIT  5; 





-- 7.
-- We have small problem with bots on our site...
-- Find users who have liked every single photo

SELECT 
	username,
	COUNT(*) AS num_likes
FROM users 
INNER JOIN likes  
	  ON users.id = likes.user_id
GROUP BY likes.user_id
HAVING num_likes =(SELECT COUNT(*) FROM photos);






