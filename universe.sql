psql --username=freecodecamp --dbname=postgres
CREATE DATABASE universe;
\l
\c universe

CREATE TABLE galaxy();
CREATE TABLE star() ;
CREATE TABLE planet() ;
CREATE TABLE moon() ;
CREATE TABLE comet() ;
CREATE TABLE asteroid() ;
CREATE TABLE satellite() ;
CREATE TABLE meteor() ;
\d

ALTER TABLE galaxy ADD COLUMN galaxy_id SERIAL PRIMARY KEY NOT NULL;
ALTER TABLE galaxy ADD COLUMN name VARCHAR(100) NOT NULL UNIQUE;
ALTER TABLE galaxy ADD COLUMN constellation  TEXT ,ADD COLUMN year INT;
ALTER TABLE galaxy ADD COLUMN diameter_km NUMERIC,ADD COLUMN distance_from_earth INT,ADD COLUMN is_spiral BOOLEAN,ADD COLUMN has_life BOOLEAN ;
\d galaxy
INSERT INTO galaxy VALUES(1,'Andromeda',NULL,6.82,2,TRUE,TRUE,'Andromeda');
INSERT INTO galaxy VALUES(2,'Circinus',1763,22.4,13,FALSE,TRUE,'Circinus');
INSERT INTO galaxy VALUES (3,Milkey Way ,800, 0.002 ,180000, t , t,Sagittaru);
INSERT INTO galaxy VALUES (4,Butterfly,1622 ,54.04 ,12200.t ,f , Virgo);
INSERT INTO galaxy VALUES (5,'antanae Galaxy',1100,9.2,200,FALSE,TRUE,'Corvus');
INSERT INTO galaxy VALUES (6,'Comet',1592,2.40,590,FALSE,FALSE,'Sculptor');
------------------------------------------------------------------------------------

ALTER TABLE moon ADD COLUMN moon_id SERIAL PRIMARY KEY NOT NULL,ADD COLUMN name VARCHAR(100) not null UNIQUE;
ALTER TABLE moon ADD COLUMN year INT,ADD COLUMN diameter INT,ADD COLUMN planet TEXT ;
ALTER TABLE moon ADD COLUMN has_life BOOLEAN ,ADD COLUMN is_spherical BOOLEAN;
--UPDATE table_name
/*SET column1 = value1, column2 = value2...., columnN = valueN
WHERE [condition];*/
--ALTER TABLE moon ALTER name TYPE VARCHAR(100);

INSERT INTO moon VALUES(1,'moon',NULL,27.32,3476,'earth',TRUE,TRUE);
INSERT INTO moon VALUES(2,'thebe',1979,0.67,90,'mars',false,TRUE);
INSERT INTO moon VALUES(3,'pan',1876,0.58,20,'jupiter',false,false);
INSERT INTO moon VALUES(4,'titan',1986,15.95,5195,'saturn',false,true);
INSERT INTO moon VALUES(5,'hydra',2005,38,61,'pluto',true,false);
INSERT INTO moon VALUES(6,'charon',1978,6.39,1200,'neptune',false,true);
INSERT INTO moon VALUES(7,'galatea',1989,0.48,80,'uranus',true,true);
INSERT INTO moon VALUES(8,'lo',1610,1.5,3630,'mars',true,false);
INSERT INTO moon VALUES(9,'atlas',1980,0.6,40,'jupiter',false,false);
INSERT INTO moon VALUES(10,'oberon',1787,13.5,1560,'uranus',true,false);
INSERT INTO moon VALUES(11,'puck',1820,0.7,170,'saturn',true,false);
INSERT INTO moon VALUES(12,'styx',2010,20,20,'neptune',false,true);
INSERT INTO moon VALUES(13,'nlx',2005,24,46,'pluto',true,true);
INSERT INTO moon VALUES(14,'mk',2016,200,1300,'makemake',false,false);
INSERT INTO moon VALUES(15,'demos',1877,13,122,'mars',true,false);
INSERT INTO moon VALUES(16,'rhea',1936,1.6,1530,'saturn',true,true);
INSERT INTO moon VALUES(17,'larissa',1967,82,560,'uranus',false,true);
INSERT INTO moon VALUES(18,'pandora',1826,55,3200,'jupiter',true ,true);
INSERT INTO moon VALUES(19,'jenymade',1723,25,254,'jupiter',true ,false);
INSERT INTO moon VALUES(20,'labetus',2003,125,2036,'saturn',false ,false);
------------------------------------------------------------------------
--alter table moon alter name  set not null;
ALTER TABLE planet ADD COLUMN planet_id SERIAL PRIMARY KEY NOT NULL,ADD COLUMN name VARCHAR(100)  NOT NULL UNIQUE;
ALTER TABLE planet ADD COLUMN diameter int ,ADD COLUMN days_in_year int,ADD COLUMN hours_in_day numeric,add column temperature text;
ALTER TABLE planet ADD COLUMN diameter int ,ADD COLUMN has_moons boolean,ADD COLUMN is_oval boolean,add column temperature text;
 
insert into planet values(1,'mercury',5000,88,1400,false,false,'very high');
insert into planet values(2,'venus',12000,220,5800,false,true,'very high');
insert into planet values(3,'earth',12180,365,24,true,true,'medium');
insert into planet values(4,'mars',7000,730,25,true,false,'medium');
insert into planet values(5,'jupiter',140000,4380,10,true,false,'medium');
insert into planet values(6,'saturn',120000,10950,10,true,false,'quite cold');
insert into planet values(7,'uranus',52000,30650,17,true,false,'cold');
insert into planet values(8,'neptune',50000,58400,16,true,true,'very cold');
insert into planet values(9,'pluto',3000,80300,120,true,true,'very cold');
insert into planet values(10,'eris',2530,90300,135,false,false,'very cold');
insert into planet values(11,'makemake',9080,95300,140,false,true,'very cold');
insert into planet values(12,'haumea',150200,70300,150,false,false,'cold');
----------------------------------------------------------------------------
alter table star add column star_id serial  primary key not null,add column name varchar(100) not null unique;
alter table star add column galaxy text,add column year int,add column designation int;
alter table star add column is_alive  boolean,add column is_huge  boolean,add column distance_from_earth numeric;

insert into star values(1,'adhil','andromeda',2016,390,true,true,10350);
insert into star values(2,'alchiba','corvus',2014,460,true,false,8560);
insert into star values(3,'elgafar','virgo',2018,5490,false,false,200570);
insert into star values(4,'meleph','cancer',2017,7630,true,false,36048);
insert into star values(5,'polis','sagittarius',2012,6812,false,true,17862);
insert into star values(6,'xamdiura','scorpus',2014,8060,true,true,45067);
-------------------------------------------------------------------------------
alter table comet add column comet_id serial  primary key not null,add column name varchar(100) not null unique;
alter table comet add column planet text,add column is_high boolean ,add column is_near_earth boolean ;
alter table comet add column designation int  ,add column year int ;

--alter table galaxy add  unique (name); to make column unique
insert into comet values(1,'asas','mars',true,true,8160,2004);
insert into comet values(2,'benett','jupiter',true,false,1974,2002);
insert into comet values(3,'cantailla','earth',false,false,5120,2010);
insert into comet values(4,'delevan','uranus',true,false,3190,2015);
--------------------------------------------------------------------
ALTER TABLE star  ADD COLUMN galaxy_id  SERIAL  references galaxy;
ALTER TABLE planet  ADD COLUMN moon_id SERIAL  references moon;
ALTER TABLE comet ADD COLUMN galaxy_id SERIAL  references galaxy;
----------------------------------------------------------------------








