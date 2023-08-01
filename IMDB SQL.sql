IMDB tables:
movies - name, image, video, artist_id, review_id, genre


 create database ImdbTask;
Query OK, 1 row affected (0.12 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| employeesdb        |
| information_schema |
| imdbtask          |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
8 rows in set (0.01 sec)

mysql> use ImdbTask;
Database changed
mysql> show tables;
Empty set (0.02 sec)

mysql> CREATE TABLE MOVIES(
    -> movieID int primary key,
    ->   name varchar(100),
    ->   poster text,
    ->   trailer text,
    ->   genre text,
    ->   reviews_id text,
    ->   artists_id text
    -> );
Query OK, 0 rows affected (0.54 sec)


mysql> INSERT INTO MOVIES(movieID,name,poster,trailer,genre,reviews_id,artists_id) VALUES (0001, "Good Night",
    -> "https://images.ottplay.com/images/2c458ea2aa4d211a1a517c720f27730d.jpg?impolicy=ottplay-20210210&width=621&height=350",
    -> "https://www.youtube.com/watch?v=eLPePlnFoho",
    -> "Futuristic,Lovable,Emotional,Comedy,Realistic,musical",
    -> "1,2",
    -> "1,2,3,4");
Query OK, 1 row affected (0.19 sec)

mysql> INSERT INTO MOVIES(movieID,name,poster,trailer,genre,reviews_id,artists_id) VALUES (0002, "Ponniyin Selvan 1",
    -> "https://images.ottplay.com/images/ponniyin-selvan-940.jpg?impolicy=ottplay-20210210&width=600",
    -> "https://www.youtube.com/watch?v=D4qAQYlgZQs",
    -> "Historical, fantasy, drama, Chola Kingdom, action, musical",
    -> "4,5,6",
    -> "1,2,3,4,5,6,7");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO MOVIES(movieID,name,poster,trailer,genre,reviews_id,artists_id) VALUES (0003, "Ponniyin Selvan 2",
    -> "https://static.toiimg.com/thumb/msid-99807846,width-1280,resizemode-4/99807846.jpg",
    -> "https://www.youtube.com/watch?v=EnhS3matIoU",
    -> "Historical, fantasy, drama, Chola Kingdom, action, musical",
    -> "7,8",
    -> "1,2,3,4,5,6,7");
Query OK, 1 row affected (0.00 sec)


mysql> SELECT * FROM MOVIES;
+---------+-----------------------+----------------------------------------------------------------------------------------------------------------------+---------------------------------------------+------------------------------------------------------------+------------+---------------+
| movieID | name                  | poster                                                                                                               | trailer                                     | genre                                                      | reviews_id | artists_id    |
+---------+-----------------------+----------------------------------------------------------------------------------------------------------------------+---------------------------------------------+------------------------------------------------------------+------------+---------------+
|       1 | Good Night            | https://images.ottplay.com/images/2c458ea2aa4d211a1a517c720f27730d.jpg?impolicy=ottplay-20210210&width=621&height=350| https://www.youtube.com/watch?v=eLPePlnFoho | Futuristic,Lovable,Emotional,Comedy,Realistic,musical      |   "1,2"    |   "1,2,3,4"   |
|       2 | Ponniyin Selvan 1     | https://images.ottplay.com/images/ponniyin-selvan-940.jpg?impolicy=ottplay-20210210&width=600                        | https://www.youtube.com/watch?v=D4qAQYlgZQs | Historical, fantasy, drama, Chola Kingdom, action, musical |  "4,5,6"   |"1,2,3,4,5,6,7"|
|       3 | Ponniyin Selvan 2     | https://static.toiimg.com/thumb/msid-99807846,width-1280,resizemode-4/99807846.jpg                                   | https://www.youtube.com/watch?v=EnhS3matIoU | Historical, fantasy, drama, Chola Kingdom, action, musical | "7,8,9,10" |"1,2,3,4,5,6,7"|
+---------+-----------------------+----------------------------------------------------------------------------------------------------------------------+---------------------------------------------+------------------------------------------------------------+------------+---------------+
3 rows in set (0.00 sec)
artists - artist_id, name, movie_id, skills, role

 CREATE TABLE ARTISTS (
    ->   artistID int primary key,
    ->   artist_name varchar(100),
    ->   movieID text,
    ->   skills text,
    ->   role text
    -> );
Query OK, 0 rows affected (0.01 sec)


mysql> INSERT INTO ARTISTS(artistID,artist_name,movieID,skills,role) VALUES (0001, "ManiKandan", "0001",
    -> "acting, ITemployee, dubbing", "Hero");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ARTISTS(artistID,artist_name,movieID,skills,role) VALUES (0002, "Meetha Raghunath", "0001",
    -> "acting, his wife, dubbing,", "Heroine");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ARTISTS(artistID,artist_name,movieID,skills,role) VALUES (0003, "Ramesh Thilak", "0001",
    -> "acting, his cousin, dubbing", "Brother in law");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ARTISTS(artistID,artist_name,movieID,skills,role) VALUES (0004, "Raichal Rabecca", "0001",
    -> "acting, ramesh wife, dubbing", "Mohan's elder sister");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ARTISTS(artistID,artist_name,movieID,skills,role) VALUES (0005, "Karthi", "0002,0003",
    -> "acting, dancing, fighting, dubbing", "Vandhiya Thevan");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ARTISTS(artistID,artist_name,movieID,skills,role) VALUES (0006, "Vikram", "0002,0003",
    -> "acting, dancing, fighting, dubbing", "Aditha Karikalan");
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ARTISTS(artistID,artist_name,movieID,skills,role) VALUES (0007, "Jayam Ravi", "0002,0003",
    -> "acting, dancing, fighting, dubbing", "Arunmozhivarman");
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ARTISTS(artistID,artist_name,movieID,skills,role) VALUES (0008, "Aishwarya Rai", "0002,0003",
    -> "acting, dancing, fighting, dubbing", "Nandhini");
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ARTISTS(artistID,artist_name,movieID,skills,role) VALUES (0009, "Trisha", "0002,0003",
    -> "acting, dancing, fighting, dubbing", "Kundavai");
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ARTISTS(artistID,artist_name,movieID,skills,role) VALUES (0010, "Aishwarya Lakshmi", "0002,0003",
    -> "acting, dancing, fighting, dubbing", "Poonguzhali");
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ARTISTS(artistID,artist_name,movieID,skills,role) VALUES (0011, "SarathKumar", "0002,0003",
    -> "acting, dancing, fighting, dubbing", "Periya Pazhuvettarayar");
Query OK, 1 row affected (0.00 sec)



mysql> SELECT * FROM ARTISTS;
+----------+-------------------+-----------+------------------------------------+------------------------+
| artistID | artist_name       | movieID   | skills                             | role                   |
+----------+-------------------+-----------+------------------------------------+------------------------+
|        1 | ManiKandan        |    0001   | acting, ITemployee, dubbing        | Hero                   |
|        2 | Meetha Raghunath  |    0001   | acting, his wife, dubbing          | Heroine                |
|        3 | Ramesh Thilak     |    0001   | acting, his cousin, dubbing        | Brother in law         |
|        4 | Raichal Rabecca   |    0001   | acting, ramesh wife, dubbing       | Mohan's elder sister   |
|        5 | Karthi            | 0002,0003 | acting, dancing, fighting, dubbing | Vandhiya Thevan        |
|        6 | Vikram            | 0002,0003 | acting, dancing, fighting, dubbing | Aditha Karikalan       |
|        7 | Jayam Ravi        | 0002,0003 | acting, dancing, fighting, dubbing | Arunmozhivarman        |
|        8 | Aishwarya Rai     | 0002,0003 | acting, dancing, fighting, dubbing | Nandhini               |
|        9 | Trisha            | 0002,0003 | acting, dancing, fighting, dubbing | Kundavai               |
|       10 | Aishwarya Lakshmi | 0002,0003 | acting, dancing, fighting, dubbing | Poonguzhali            |
|       11 | SarathKumar       | 0002,0003 | acting, dancing, fighting, dubbing | Periya Pazhuvettarayar |
+----------+-------------------+-----------+------------------------------------+------------------------+
11 rows in set (0.00 sec)

reviews - review_id, reviewer_name, review, movie_id

 CREATE TABLE REVIEWS (
    ->   reviewID int primary key,
    ->   movieID int,
    ->   reviewer varchar(100),
    ->   review text
    -> );
Query OK, 0 rows affected (0.11 sec)

mysql> INSERT INTO REVIEWS(reviewID,movieID,reviewer,review) VALUES (0001, 'Sakthi',
    -> "Feel Good Futuristic movie And Entertainment");
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO REVIEWS(reviewID,movieID,reviewer,review) VALUES (0001, 'Karthiga',
    -> "Most Lovable Movie And Family Releated");
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO REVIEWS(reviewID,movieID,reviewer,review) VALUES (0002, 0003, 'Vasuki',
    -> "Epic Masterpiece - beautiful performances");
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO REVIEWS(reviewID,movieID,reviewer,review) VALUES (0002, 0003, 'Abirami',
    -> "Visually stunning- world of Cholas");
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO REVIEWS(reviewID,movieID,reviewer,review) VALUES (0002, 0003, 'Kalavathi',
    -> "Marvelous musical");
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO REVIEWS(reviewID,movieID,reviewer,review) VALUES (0002, 0003, 'Chandran',
    -> "Unforgettable- beautiful performances");
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO REVIEWS(reviewID,movieID,reviewer,review) VALUES (0002, 0003, 'Munna',
    -> "Mani Ratnam's Magnum Opus");
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO REVIEWS(reviewID,movieID,reviewer,review) VALUES (0002, 0003, 'Dhasan',
    -> "A perfect Ending");
Query OK, 1 row affected (0.00 sec)



mysql> SELECT * FROM REVIEWS;
+----------+---------+------------------+-----------------------------------------------+
| reviewID | movieID | reviewer         | review                                        |
+----------+---------+------------------+-----------------------------------------------+
|        1 |       1 | Sakthi           | Feel Good Futuristic movie And Entertainment  |
|        2 |       1 | Karthiga         | Most Lovable Movie And Family Releated        |
|        3 |     2,3 | Vasuki           | Epic Masterpiece - beautiful performances     |
|        4 |     2,3 | Abirami          | Visually stunning- world of Cholas            |
|        5 |     2,3 | Kalavathi        | Marvelous musical                             |
|        6 |     2,3 | Chandran         | Unforgettable- beautiful performances         |
|        7 |     2,3 | Munna            | Mani Ratnam's Magnum Opus                     |
|        8 |     2,3 | Dhasan           | A perfect Ending                              |
+----------+---------+------------------+-----------------------------------------------+
8 rows in set (0.00 sec)