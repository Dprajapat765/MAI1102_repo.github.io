use inndb;

-- FIND THE ROOM NAME WITH 7 CHARACTERS LONG FORM LAST
SELECT roomname, RIGHT(Roomname,7) as last_seven_char FROM rooms;

-- FIND THE ROOM NAME WITH 7 CHARACTERS WITH LONG FROM START
SELECT roomname,LEFT(roomname,7) as first_seven_char FROM rooms;

-- REMOVE ND FROM ROOMID OF ALL THE ROOMS 
SELECT roomname,roomid, TRIM('ND' FROM roomid) AS REMOVE_ND FROM rooms;

-- FIND THE LOCATION OF N IN ROOM ID

SELECT roomname, roomid, POSITION('N' IN roomid) AS POSITION_OF_N FROM rooms;

-- GET THE SUB STRING FROM INDEX 3 TO 7 CHARACTERS FROM ROOM NAME COLUMNS

SELECT roomname, SUBSTR(roomname,3,7) as sub_string FROM rooms;

-- SHOW THE SUM OF BASE PRICE OF ALL THE ROOMS ACCORDING TO THE BED TYPE AND TAKE THE AVERAGE OF THAT

SELECT AVG(price)
FROM 
(SELECT SUM(baseprice) AS price
FROM rooms
GROUP BY Bedtype)
room_table;

