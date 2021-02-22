drop database imdb;
create database  IF NOT EXISTS imdb  DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
use imdb;
CREATE TABLE Actor (
    ActorID int NOT NULL,
    name varchar(255) NOT NULL,  
    FilmID int,
    PRIMARY KEY (ActorID),
    FOREIGN KEY (FilmID) REFERENCES Film(FilmID)
);

CREATE TABLE Director (
    DirectorID int NOT NULL,
    name varchar(255) NOT NULL, 
    FilmID int,
    PRIMARY KEY (DirectorID),
    FOREIGN KEY (FilmID) REFERENCES Film(FilmID)
);

CREATE TABLE Film (
    FilmID int NOT NULL,
    title  varchar(255) NOT NULL,
    ActorID int,
    DirectorID int,
    PRIMARY KEY (FilmID),
    FOREIGN KEY (ActorID) REFERENCES Actor(ActorID),
    FOREIGN KEY (DirectorID) REFERENCES Director(DirectorID)
);




 /*insert into Film (title,ActorID,DirectorID) values ('Inception',1,1),('Titanic',1,2);
 insert into Actor (ActorID,name,FilmID) values (1,'Leonardo DeCaprio',1);
 insert into Director (DirectorID,name,FilmId) values (1,'Chris Nolan',1),(2,'James Cameron',2);
 select * from Actor;
 select * from Film; 
*/
