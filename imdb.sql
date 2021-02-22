drop database imdb;
create database  IF NOT EXISTS imdb  DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
use imdb;

CREATE TABLE Actor (
    ActorID int NOT NULL,
    name varchar(255) NOT NULL, 
    PRIMARY KEY (ActorID)
);

CREATE TABLE Director (
    DirectorID int NOT NULL,
    name varchar(255) NOT NULL,
    PRIMARY KEY (DirectorID)
);

CREATE TABLE Film (
    FilmID int NOT NULL,
    title  varchar(255) NOT NULL,
    PRIMARY KEY (FilmID)    
);

CREATE TABLE Movie (
    MovieID int NOT NULL,
    title  varchar(255) NOT NULL,
    ActorID int,
    FilmID int,
    PRIMARY KEY (MovieID),
    FOREIGN KEY (ActorID) REFERENCES Actor(ActorID),
    FOREIGN KEY (FilmID) REFERENCES Film(FilmID)
);



-- FOREIGN KEY (ActorID) REFERENCES Actor(ActorID),
   --  FOREIGN KEY (DirectorID) REFERENCES Director(DirectorID)FOREIGN KEY (ActorID) REFERENCES Actor(ActorID),
      -- FOREIGN KEY (DirectorID) REFERENCES Director(DirectorID)


 /*insert into Film (title,ActorID,DirectorID) values ('Inception',1,1),('Titanic',1,2);
 insert into Actor (ActorID,name,FilmID) values (1,'Leonardo DeCaprio',1);
 insert into Director (DirectorID,name,FilmId) values (1,'Chris Nolan',1),(2,'James Cameron',2);
 select * from Actor;
 select * from Film; 
*/
