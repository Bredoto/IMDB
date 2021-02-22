drop database imdb;
create database  IF NOT EXISTS imdb  DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
use imdb;

CREATE TABLE Actor (
    ActorID int NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL, 
    PRIMARY KEY (ActorID)
);

CREATE TABLE Director (
    DirectorID int NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    PRIMARY KEY (DirectorID)
);

CREATE TABLE Film (
    FilmID int NOT NULL AUTO_INCREMENT,
    title  varchar(255) NOT NULL,
    PRIMARY KEY (FilmID)    
);

CREATE TABLE Movie (
    MovieID int NOT NULL AUTO_INCREMENT,
    ActorID int,   
    FilmID int,
    DirectorID int,
    PRIMARY KEY (MovieID),
    FOREIGN KEY (ActorID) REFERENCES Actor(ActorID),
    FOREIGN KEY (FilmID) REFERENCES Film(FilmID)    
);


insert into Actor (name) values ('Leonardo DeCaprio'),('Kate Elizabeth Winslet'),('Elliot Pag'),('George Clooney'),('Joseph Gordon-Levittn'),('Brad Pitt'),('Matthew McConaughey'),('Christian Bale'),('Benedict Cumberbatch');
insert into Film (title) values ('Inception'),('Titanic');
insert into Director (name) values ('Christopher Nolan'),('James Cameron');
insert into Movie (ActorID, FilmID,DirectorID) values (1,1,1),(1,2,2);
 
select * from Movie; 


 /*insert into Film (title,ActorID,DirectorID) values ('Inception',1,1),('Titanic',1,2);
 insert into Actor (ActorID,name,FilmID) values (1,'Leonardo DeCaprio',1);
 insert into Director (DirectorID,name,FilmId) values (1,'Chris Nolan',1),(2,'James Cameron',2);
 select * from Actor;
 select * from Film; 
*/
