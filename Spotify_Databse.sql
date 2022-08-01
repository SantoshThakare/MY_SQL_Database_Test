show databases;

create database	Spotify1;

use Spotify1;

create table Users_(user_id int primary key, user_name varchar(200), user_email varchar(200),
	user_pswrd varchar(200));
    
    
    desc Users_;
    
    create table  Playlists_(p_id int primary key, p_name varchar (200), p_desc varchar (200), user_id int ,
				foreign key(user_id) references Users_(user_id));
                
   desc Playlists_;
   
   INSERT INTO Users_ values(1001, 'santosh', 'san66asbd', 's6akkjk26273');
   insert into Users_ values(1002, 'harshal', 'hnabs', 'swk26273');
   insert into Users_ values(1003, 'akshay', 'ssbdn', 'a26273');
   insert into Users_ values(1004, 'rahul' , 'snasbn', 'Rahul26273');
   
  
   
   insert into Playlists_ values( 14, 'Playlist1' , 'santosh favourite songs' , 1004);
   insert into Playlists_ values(15, 'Playlist2 ', 'morning favourite'  , 1002);
   insert into Playlists_ values(16, 'Playlist3' , 'afternoon favourite' , 1003);
   insert into Playlists_ values(17, 'Playlist4' , 'Playlist favourite ', 1001);
   

select * from Playlists_;
select *from Users_;

select user_id, user_name from Users_;

select * from Users_ order by  user_name desc;

select user_name, count(*)
FROM Users_
group by user_id;   


select * from Users_ where user_id = 1003; 

select * from Users_ where user_id = 1003 or user_name= 'akshay';

SELECT * FROM Users_
 WHERE user_id  IN(SELECT user_id FROM Users_ WHERE user_id > 1001);
 
 SELECT * FROM Users_
 WHERE user_id  NOT IN(SELECT user_id FROM Users_ WHERE user_id < 1001);
 
 use joinspotify;
 
show tables;

select * from Users_ join  Playlists_ on 
Users_.user_id = Playlists_.user_id;

select * from Users_ inner join  Playlists_ on 
Users_.user_id = Playlists_.user_id;

select * from Users_ cross join  Playlists_ ;
 
CREATE TABLE tracks(track_id int(40) PRIMARY KEY,track_name varchar(40),track_artist varchar(40), p_id int,
CONSTRAINT fk_p_id FOREIGN KEY(p_id) REFERENCES Playlists_(p_id));

desc tracks;

INSERT INTO tracks values(101,'Track1','vijay,ajay',12),(102,'Track2','acsd,hjwk',13),
(103,'Track3','acfdsd,hjwk',14),(104,'Track4','acsddf,hjwk',15),(105,'Track5','acsssd,hjwsk',16);


SELECT * from tracks;

 SELECT  user_name FROM Users_
 WHERE user_id IN (SELECT user_id FROM Playlists_ WHERE p_name = 'Playlist3');

 SELECT  * FROM Playlists_
 WHERE p_id IN (SELECT p_id FROM Playlists_ WHERE p_name = 'Playlist3');
 
 SELECT tracks.track_name FROM tracks 
       INNER JOIN Playlists_ 
       ON Playlists_.p_id = tracks.p_id;
       
 SELECT tracks.track_name, Playlists_.p_id 
FROM ((tracks INNER JOIN Playlists_ ON Playlists_.p_id = tracks.p_id)
INNER JOIN Users_ ON Users_.user_id = Playlists_.user_id);      
 
  SELECT tracks.track_name, Users_.user_id 
FROM ((tracks INNER JOIN Playlists_ ON Playlists_.p_id = tracks.p_id)
INNER JOIN Users_ ON Users_.user_id = Playlists_.user_id);

 SELECT tracks.track_id, Users_.user_id 
FROM ((tracks INNER JOIN Playlists_ ON Playlists_.p_id = tracks.p_id)
INNER JOIN Users_ ON Users_.user_id = Playlists_.user_id);      


SELECT Users_ .user_name, Playlists_ .p_name
FROM Users_
CROSS JOIN Playlists_;
	