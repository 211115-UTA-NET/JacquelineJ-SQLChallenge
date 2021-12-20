CREATE TABLE Pokemon (
    P_Id INT  IDENTITY(1,1) PRIMARY KEY,
    P_Name VARCHAR(50) NOT NULL,
    P_Height VARCHAR(50) Not Null,
    P_Weight VARCHAR(50)
 );

 CREATE TABLE Type(
    T_Id INT  IDENTITY(1,1) PRIMARY KEY,
    T_Name VARCHAR(50) NOT NULL UNIQUE,
  );
    CREATE TABLE PokemonType (
    PT_Id INT IDENTITY(1,1),
    PokemonId INT NOT NULL,
    TypeID INT NOT NULL,
	PRIMARY KEY (PT_Id)  ,
	FOREIGN KEY (PokemonId) REFERENCES Pokemon(P_Id),
	FOREIGN KEY (TypeID) REFERENCES Type(T_Id)
   );

   --a pokemon with a weight of 70, height of 7, and named Bulbasaur.
--a pokemon with a height of 3, a weight of 40, and the name Ditto.

INSERT INTO Pokemon(P_Name, P_Height,P_Weight) 
VALUES
('Bulbasaur','70','7'),
('Ditto','3','40');
   
INSERT INTO Type(T_Name) 
VALUES
('Normal'),
('Grass');

SELECT * FROM Pokemon;
SELECT * FROM Type;
SELECT * FROM PokemonType;

INSERT INTO PokemonType(PokemonId, TypeID) 
VALUES
(1,2),
(2,1);