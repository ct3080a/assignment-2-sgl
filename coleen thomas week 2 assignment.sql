# 1. Videos table. Create one table to keep track of the videos. This table should include a unique ID, the title 
-- of the video, the length in minutes, and the URL. Populate the table with at least three related videos from YouTube or
-- other publicly available resources.
DROP TABLE IF EXISTS videos;

CREATE TABLE videos (VidId int, VidTitle varchar(80), VidLength time, url varchar);
INSERT INTO videos (vidnum int, vid title, vid length, url) 
VALUES ( 01, 'How to Frost a Half Sheet Cake', '16:37', 'https://www.youtube.com/watch?v=8wqL9MkLLlM'),
(02, 'How to Decorate with Buttercream Icing | Cake Decorations', '3:31', 'https://www.youtube.com/watch?v=uI9ITH0xgjo'),
(03, 'how to frost a cake', '5:10', 'https://www.youtube.com/watch?v=Pf5KQolKryE'),
(04, 'How to Frost a Cake With Gananche', '5:28', 'https://www.youtube.com/watch?v=hmLAr_tHSE4');

SELECT * FROM videos;

#2. Create and populate Reviewers table. Create a second table that provides at least two user reviews for each of
-- at least two of the videos. These should be imaginary reviews that include columns for the user’s name
-- (“Asher”, “Cyd”, etc.), the rating (which could be NULL, or a number between 0 and 5), and a short text review
-- (“Loved it!”). There should be a column that links back to the ID column in the table of videos.

DROP TABLE IF EXISTS reviews;

CREATE TABLE reviews (review user varchar, rating int, review varchar, vidnum int);
INSERT INTO reviews ('SunnyCat_88', 4, 'Short and helpful', 02); ('Danipop', 2, 'Directions could have been more detailed', 02);
('Nvrgvup', 5, 'Looks delish!', 04); ('NYFinesst', 1, 'My gran makes a better gananche', 04);

SELECT * FROM reviews;

-- 3. Report on Video Reviews. Write a JOIN statement that shows information from both tables.
SELECT * FROM videos INNER JOIN reviews ON reviews.vidnum = videos.vidnum ORDER BY vidnum
