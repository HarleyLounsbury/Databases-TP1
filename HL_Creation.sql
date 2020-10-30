#########################################
# Drop de tables
#########################################
DROP TABLE IF EXISTS IngredientsCocktails;
DROP TABLE IF EXISTS AlcoolsCocktails;
DROP TABLE IF EXISTS UstensilesCocktails;
DROP TABLE IF EXISTS Instructions;
DROP TABLE IF EXISTS Ustensiles;
DROP TABLE IF EXISTS Contenants;
DROP TABLE IF EXISTS Quantites;
DROP TABLE IF EXISTS UnitesDeMesures;
DROP TABLE IF EXISTS Ingredients;
DROP TABLE IF EXISTS Alcools;
DROP TABLE IF EXISTS Cocktails;

#########################################
# Table Alcools
#########################################
CREATE TABLE IF NOT EXISTS Alcools
( idAlcool INT AUTO_INCREMENT PRIMARY KEY
, nom VARCHAR(40) NOT NULL
);

ALTER TABLE Alcools
ADD CONSTRAINT Alcools_nom_UK
UNIQUE (nom);

#########################################
# Table UnitesDeMesures
#########################################
CREATE TABLE IF NOT EXISTS UnitesDeMesures
( idUniteDeMesure INT AUTO_INCREMENT PRIMARY KEY
, nom VARCHAR(40) NOT NULL
, abreviation VARCHAR(5)
);

ALTER TABLE UnitesDeMesures
ADD CONSTRAINT UnitesDeMesures_nom_UK
UNIQUE (nom);

ALTER TABLE UnitesDeMesures
ADD CONSTRAINT UnitesDeMesures_abreviation_UK
UNIQUE (abreviation);

#########################################
# Table Quantites
#########################################
CREATE TABLE IF NOT EXISTS Quantites
( idQuantite INT AUTO_INCREMENT PRIMARY KEY
, idUniteDeMesure INT NOT NULL
, valeur INT NOT NULL
);

ALTER TABLE Quantites
ADD CONSTRAINT Quantites_idUniteDeMesure_valeur_UK
UNIQUE (idUniteDeMesure, valeur); 

ALTER TABLE Quantites
ADD CONSTRAINT Quantites_UnitesDeMesures_FK
FOREIGN KEY (idUniteDeMesure) REFERENCES UnitesDeMesures(idUnitesDeMesure);

#########################################
# Table Contenants
#########################################
CREATE TABLE IF NOT EXISTS Contenants
( idContenant INT AUTO_INCREMENT PRIMARY KEY
, nom VARCHAR(40) NOT NULL
);

ALTER TABLE Contenants
ADD CONSTRAINT Contenants_nom_UK
UNIQUE (nom);

#########################################
# Table Cocktails
#########################################
CREATE TABLE IF NOT EXISTS Cocktails
( idCocktail INT AUTO_INCREMENT PRIMARY KEY
, idContenant INT NOT NULL
, nom VARCHAR(40) NOT NULL
);

ALTER TABLE Cocktails
ADD CONSTRAINT Cocktails_nom_UK
UNIQUE (nom);

ALTER TABLE Cocktails
ADD CONSTRAINT Cocktails_Contentants_FK
FOREIGN KEY (idContenant) REFERENCES Contenants(idContenant);

#########################################
# Table Instructions
#########################################
CREATE TABLE IF NOT EXISTS Instructions
( idInstruction INT AUTO_INCREMENT PRIMARY KEY
, idCocktail INT NOT NULL
, noSequence INT NOT NULL
, description VARCHAR(255) NOT NULL
);

ALTER TABLE Instructions 
ADD CONSTRAINT Instructions_idCocktail_noSequence_UK
UNIQUE (idCocktail, noSequence);

ALTER TABLE Instructions
ADD CONSTRAINT Instructions_Cocktails_FK
FOREIGN KEY (idCocktail) REFERENCES Cocktails(idCocktail);

#########################################
# Table Ingredients
#########################################
CREATE TABLE IF NOT EXISTS Ingredients
( idIngredient INT AUTO_INCREMENT PRIMARY KEY
, nom VARCHAR(40) NOT NULL
, description VARCHAR(140)
);

ALTER TABLE Ingredients
ADD CONSTRAINT Ingredients_nom_UK
UNIQUE (nom);

#########################################
# Table Ustensiles
#########################################
CREATE TABLE IF NOT EXISTS Ustensiles
( idUstensile INT AUTO_INCREMENT PRIMARY KEY
, nom VARCHAR(40) NOT NULL
, description VARCHAR(140)
);

ALTER TABLE Ustensiles 
ADD CONSTRAINT Ustensiles_nom_UK
UNIQUE (nom);

#########################################
# Table UstensilesCocktails
#########################################
CREATE TABLE IF NOT EXISTS UstensilesCocktails
( idUstensileCocktail INT AUTO_INCREMENT PRIMARY KEY
, idUstensile INT NOT NULL
, idCocktail INT NOT NULL
);

ALTER TABLE UstensilesCocktails
ADD CONSTRAINT UstensilesCocktails_UK
UNIQUE (idUstensile, idCocktail);

ALTER TABLE UstensilesCocktails
ADD CONSTRAINT UstensilesCocktails_Ustensiles_FK
FOREIGN KEY (idUstensile) REFERENCES Ustensiles(idUstensile);

ALTER TABLE UstensilesCocktails
ADD CONSTRAINT UstensilesCocktails_Cocktails_FK
FOREIGN KEY (idCocktail) REFERENCES Cocktails(idCocktail);

#########################################
# Table AlcoolsCocktails
#########################################
CREATE TABLE IF NOT EXISTS AlcoolsCocktails
( idAlcoolCocktail INT AUTO_INCREMENT PRIMARY KEY
, idAlcool INT NOT NULL
, idCocktail INT NOT NULL
, idQuantite INT
);

ALTER TABLE AlcoolsCocktails
ADD CONSTRAINT AlcoolsCocktails_UK
UNIQUE (idAlcool, idCocktail);

ALTER TABLE AlcoolsCocktails
ADD CONSTRAINT AlcoolsCocktails_Alcools_FK
FOREIGN KEY (idAlcool) REFERENCES Alcools(idAlcool);

ALTER TABLE AlcoolsCocktails
ADD CONSTRAINT AlcoolsCocktails_Cocktails_FK
FOREIGN KEY (idCocktail) REFERENCES Cocktails(idCocktail);

ALTER TABLE AlcoolsCocktails
ADD CONSTRAINT AlcoolCocktails_Quantites_FK
FOREIGN KEY (idQuantite) REFERENCES Quantites(idQuantite);

#########################################
# Table IngredientsCocktails
#########################################
CREATE TABLE IF NOT EXISTS IngredientsCocktails
( idIngredientCocktail INT AUTO_INCREMENT PRIMARY KEY
, idIngredient INT NOT NULL
, idCocktail INT NOT NULL
, idQuantite INT
);

ALTER TABLE IngredientsCocktails
ADD CONSTRAINT IngredientsCocktails_UK
UNIQUE (idIngredient, idCocktail);

ALTER TABLE IngredientsCocktails
ADD CONSTRAINT IngredientsCocktails_Ingredients_FK
FOREIGN KEY (idIngredient) REFERENCES Ingredients(idIngredient);

ALTER TABLE IngredientsCocktails
ADD CONSTRAINT IngredientsCocktails_Cocktails_FK
FOREIGN KEY (idCocktail) REFERENCES Cocktails(idCocktail);

ALTER TABLE IngredientsCocktails
ADD CONSTRAINT IngredientCocktails_Quantites_FK
FOREIGN KEY (idQuantite) REFERENCES Quantites(idQuantite);