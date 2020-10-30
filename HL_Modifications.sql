#########################################
# Modification: les variantes (relation "est-un")
#########################################
DROP TABLE IF EXISTS Variantes;
CREATE TABLE IF NOT EXISTS Variantes
( idVariante INT AUTO_INCREMENT PRIMARY KEY
, idCocktailOriginale INT NOT NULL
, idCocktailVariante INT NOT NULL
);

ALTER TABLE Variantes
ADD CONSTRAINT Variantes_UK
UNIQUE (idCocktailOriginale, idCocktailVariante);

ALTER TABLE Variantes
ADD CONSTRAINT Variantes_Cocktails_FK
FOREIGN KEY (idCocktailOriginale) REFERENCES Cocktails(idCocktail);

ALTER TABLE Variantes
ADD CONSTRAINT Variantes_Cocktails_FK
FOREIGN KEY (idCocktailVariante) REFERENCES Cocktails(idCocktail);


INSERT INTO Variantes
(idCocktailOriginale, idCocktailVariante)
VALUES
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Bloody Mary')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Virgin Mary')
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Cuba Libre')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Cuba Libre Supreme')
);

#########################################
# Modification: Si le cocktail contient de l'acool
#########################################
ALTER TABLE Cocktails
ADD COLUMN contientAlcool BOOL DEFAULT TRUE;

UPDATE Cocktails
SET contientAlcool = FALSE
WHERE nom LIKE 'Virgin%';

#########################################
# Modification: Supprimer Long Island iced tea
#########################################
DELETE FROM UstensilesCocktails
WHERE idCocktail = (SELECT idCocktail FROM Cocktails WHERE nom = 'Long Island iced tea');

DELETE FROM IngredientsCocktails
WHERE idCocktail = (SELECT idCocktail FROM Cocktails WHERE nom = 'Long Island iced tea');

DELETE FROM AlcoolsCocktails
WHERE idCocktail = (SELECT idCocktail FROM Cocktails WHERE nom = 'Long Island iced tea');

DELETE FROM Instructions 
WHERE idCocktail = (SELECT idCocktail FROM Cocktails WHERE nom = 'Long Island iced tea');

DELETE FROM Cocktails
WHERE nom = 'Long Island iced tea';
