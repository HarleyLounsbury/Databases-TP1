#########################################
# Unités de Mésure
#########################################
INSERT INTO UnitesDeMesures
( nom, abreviation )
VALUES
( 'millilitre'
, 'ml'
)
,
( 'quartier'
, NULL
)
,
( 'morceau'
, NULL
)
,
( 'trait'
, NULL
)
,
( 'goutte'
, NULL
)
,
( 'pincée'
, NULL
)
,
( 'petite branche'
, NULL
)
,
( 'rondelle'
, NULL
);

#########################################
# Quantités
#########################################

INSERT INTO Quantites
( idUniteDeMesure, valeur )
VALUES
( (SELECT idUniteDeMesure FROM UnitesDeMesures WHERE nom = 'millilitre')
, 45
)
,
( (SELECT idUniteDeMesure FROM UnitesDeMesures WHERE nom = 'millilitre')
, 120
)
,
( (SELECT idUniteDeMesure FROM UnitesDeMesures WHERE nom = 'quartier')
, 1
)
,
( (SELECT idUniteDeMesure FROM UnitesDeMesures WHERE nom = 'millilitre')
, 8
)
,
( (SELECT idUniteDeMesure FROM UnitesDeMesures WHERE nom = 'millilitre')
, 20
)
,
( (SELECT idUniteDeMesure FROM UnitesDeMesures WHERE nom = 'morceau')
, 1
)
,
( (SELECT idUniteDeMesure FROM UnitesDeMesures WHERE nom = 'trait')
, 1
)
,
( (SELECT idUniteDeMesure FROM UnitesDeMesures WHERE nom = 'goutte')
, 3
)
,
( (SELECT idUniteDeMesure FROM UnitesDeMesures WHERE nom = 'pincée')
, 1
)
,
( (SELECT idUniteDeMesure FROM UnitesDeMesures WHERE nom = 'petite branche')
, 1
)
,
( (SELECT idUniteDeMesure FROM UnitesDeMesures WHERE nom = 'millilitre')
, 160
)
,
( (SELECT idUniteDeMesure FROM UnitesDeMesures WHERE nom = 'millilitre')
, 15
)
,
( (SELECT idUniteDeMesure FROM UnitesDeMesures WHERE nom = 'millilitre')
, 10
)
,
( (SELECT idUniteDeMesure FROM UnitesDeMesures WHERE nom = 'millilitre')
, 180
)
,
( (SELECT idUniteDeMesure FROM UnitesDeMesures WHERE nom = 'quartier')
, 2
)
, 
( (SELECT idUniteDeMesure FROM UnitesDeMesures WHERE nom = 'rondelle')
, 1
);

#########################################
# Alcools
#########################################
INSERT INTO Alcools
( nom )
VALUES
( 'vodka' )
,
( 'dry gin' )
,
( 'vermouth sec' )
,
( 'rhum blanc' )
,
( 'rhum brun' )
,
( 'tequila' )
,
( 'liqueur d\'agrumes' )
, 
( 'rhum ambré' )
,
( 'liqueur de pêche' )
,
( 'bourbon' );

#########################################
# Ingrédients
#########################################
INSERT INTO Ingredients
( nom, description )
VALUES
( 'jus d\'orange'
, NULL
)
,
( 'orange'
, NULL
)
,
( 'glaçons'
, NULL
)
,
( 'olives vertes'
, NULL
)
, 
( 'crème de noix de coco'
, NULL
)
,
( 'lait de noix de coco sucré'
, NULL
)
,
( 'jus d\'ananas'
, NULL
)
,
( 'glaçons concassés'
, NULL
)
, 
( 'ananas frais'
, 'découpé en triangle (1 cm d\'épaisseur)'
)
,
( 'cerise au marasquin'
, NULL
)
,
( 'jus de tomate'
, NULL
)
,
( 'jus de citron'
, NULL
)
,
( 'sauce Worcestershire'
, NULL
)
,
( 'sauce Tabasco'
, NULL
)
,
( 'sel de céleri'
, NULL
)
,
( 'poivre noir'
, NULL
)
, 
( 'céleri'
, NULL
)
, 
( 'jus de lime'
, NULL
)
,
( 'fraises congelées'
, NULL
)
, 
( 'sirop de sucre de canne'
, 'sirop simple'
)
,
( 'fraise'
, NULL
)
,
( 'jus d\'une demi-lime'
, NULL
)
,
( 'sel fin'
, NULL
)
, 
( 'lime'
, NULL
)
,
( 'cola'
, NULL
)
,
( 'citron'
, NULL
)
,
( 'pic'
, 'pour garnitures'
);

#########################################
# Ustensiles
#########################################
INSERT INTO Ustensiles
( nom, description )
VALUES
( 'shaker'
, '1 contenant en acier inoxydable, 1 contentant en vitre' 
)
,
( 'passoire à glaçons'
, 'pour filtrer des glaçons'
)
,
( 'cuillère à mélange'
, 'longue cuillère pour mélanger'
)
,
( 'verre à mélange'
, 'verre de service de bar pour mélanger'
)
,
( 'mélangeur électrique'
, 'terme français pour \'blender\''
);

#########################################
# Contenants (verres de service)
#########################################
INSERT INTO Contenants
( nom )
VALUES
( 'verre highball' )
,
( 'verre à martini' )
,
( 'verre tulipe' )
,
( 'verre à margarita' );

#########################################
# Cocktails
#########################################
INSERT INTO Cocktails
( idContenant, nom )
VALUES
( (SELECT idContenant FROM Contenants WHERE nom = 'verre highball')
, 'Screwdriver'
)
,
( (SELECT idContenant FROM Contenants WHERE nom = 'verre à martini')
, 'Dry Martini'
)
,
( (SELECT idContenant FROM Contenants WHERE nom = 'verre tulipe')
, 'Piña Colada'
)
,
( (SELECT idContenant FROM Contenants WHERE nom = 'verre highball')
, 'Bloody Mary'
)
,
( (SELECT idContenant FROM Contenants WHERE nom = 'verre highball')
, 'Virgin Mary'
)
,
( (SELECT idContenant FROM Contenants WHERE nom = 'verre à margarita')
, 'Daiquiri aux fraises'
)
,
( (SELECT idContenant FROM Contenants WHERE nom = 'verre à margarita')
, 'Margarita'
)
,
( (SELECT idContenant FROM Contenants WHERE nom = 'verre highball')
, 'Cuba Libre'
)
,
( (SELECT idContenant FROM Contenants WHERE nom = 'verre highball')
, 'Cuba Libre Supreme'
)
,
( (SELECT idContenant FROM Contenants WHERE nom = 'verre highball')
, 'Long Island iced tea'
);

#########################################
# Les instructions
#########################################
INSERT INTO Instructions
( idCocktail, noSequence, description )
VALUES
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Screwdriver')
, 1
, 'Dans un shaker, déposer les glaçons, la vodka et le jus d\'orange.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Screwdriver')
, 2
, 'Agiter vivement, pendant 8 à 10 secondes.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Screwdriver')
, 3
, 'Filtrer au-dessus du verre highball à l\'aide de la passoire à glaçons.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Screwdriver')
, 4
, 'Garnir d\'un quartier d\'orange.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Dry Martini')
, 1
, 'Mettre les glaçons, le dry gin et le vermouth dans un verre à mélange.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Dry Martini')
, 2
, 'Remuer à l\'aide de la cuillère à mélange pendant 6 à 8 secondes.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Dry Martini')
, 3
, 'Filtrer au-dessus du verre à martini à l\'aide de la passoire à glaçons.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Dry Martini')
, 4
, 'Garnir de quelques olives.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Piña Colada')
, 1
, 'Dans le mélangeur électrique, déposer kes glaçons, le rhum blanc, le rhum brun, la crème de noix de coco et le jus d\'ananas.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Piña Colada')
, 2
, 'Mélanger les ingrédients jusqu\'à l\'obtention d\'une consistence onctueuse (maximum 10 secondes).'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Piña Colada')
, 3
, 'Verser dans le verre tulipe.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Piña Colada')
, 4
, 'Garnir du morceau d\'ananas et de la cerise (sur le pic).'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Bloody Mary')
, 1
, 'Dans le verre à mélange contenant les glaçons, verses la vodka, le jus de tomate, le jus de citron, la sauce Worcestershire, la sauce Tabasco, le sel de cleri et le poivre noir.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Bloody Mary')
, 2
, 'Remuer à l\'aidde de la cuillère à mélange.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Bloody Mary')
, 3
, 'Filtrer au-dessus du verre highball à l\'aide de la passoire à glaçons.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Bloody Mary')
, 4
, 'Rincer la branche de céleri et la placer de le verre.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Virgin Mary')
, 1
, 'Dans le verre à mélange contenant les glaçons, verser le jus de tomate, le jus de citron, la sauce Worcestershire, la sauce Tabasco, le sel de céleri et le poivre noir.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Virgin Mary')
, 2
, 'Remuer à l\'aidde de la cuillère à mélange.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Virgin Mary')
, 3
, 'Filtrer au-dessus du verre highball à l\'aide de la passoire à glaçons.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Virgin Mary')
, 4
, 'Rincer la branche de céleri et la placer de le verre.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Daiquiri aux fraises')
, 1
, 'Dans le mélangeur électrique, verser tous les ingrédients sauf la fraise.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Daiquiri aux fraises')
, 2
, 'Mélanger quelques secondes jusqu\'a ce que le contenu soit lisse.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Daiquiri aux fraises')
, 3
, 'Servir dans le verre à margarita.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Daiquiri aux fraises')
, 4
, 'Garnir de la fraise sur le pic.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Margarita')
, 1
, 'Givrer le rebord d\'un verre à margarita avec du sel fin.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Margarita')
, 2
, 'Dans un shaker rempli de glaçons, verser la tequila, la liqueur d’agrumes et le jus de lime.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Margarita')
, 3
, 'Agiter vivement pendant 8 à 10 secondes.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Margarita')
, 4
, 'Filtrer le contenu du shaker dans le verre à margarita à l’aide de la passoire à glaçons.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Margarita')
, 5
, 'Garnir du quartier de lime.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Cuba Libre')
, 1
, 'Dans un verre highball à moitié rempli de glaçons, verser le rhum.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Cuba Libre')
, 2
, 'Allonger avec le cola.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Cuba Libre')
, 3
, 'Ajouter un quartier de lime pressé.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Cuba Libre')
, 4
, 'Remuer doucement à l’aide de la cuillère à mélange.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Cuba Libre')
, 5
, 'Garnir d’un quartier de lime.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Cuba Libre Supreme')
, 1
, 'Dans un verre highball à moitié rempli de glaçons, verser la liqueur de pêche et de bourbon.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Cuba Libre Supreme')
, 2
, 'Allonger avec le cola.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Cuba Libre Supreme')
, 3
, 'Ajouter un quartier de lime pressé.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Cuba Libre Supreme')
, 4
, 'Remuer doucement à l’aide de la cuillère à mélange.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Cuba Libre Supreme')
, 5
, 'Garnir d’un quartier de lime.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Long Island iced tea')
, 1
, 'Dans un shaker, verser tous les ingrédients, sauf le cola et la rondelle de citron.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Long Island iced tea')
, 2
, 'Agiter vivement pendant 8 à 10 secondes.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Long Island iced tea')
, 3
, 'Verser le contenu du shaker dans le verre highball rempli de glaçons à travers la passoire à glaçons.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Long Island iced tea')
, 4
, 'Allonger le cola.'
)
,
( (SELECT idCocktail FROM Cocktails WHERE nom = 'Long Island iced tea')
, 5
, 'Garnir d’une rondelle de citron.'
);

#########################################
# Table AlcoolsCocktails
#########################################
INSERT INTO AlcoolsCocktails
( idAlcool, idCocktail )
VALUES
( (SELECT idAlcool FROM Alcools WHERE nom = 'vodka')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Screwdriver')
)
,
( (SELECT idAlcool FROM Alcools WHERE nom = 'dry gin')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Dry Martini')
)
,
( (SELECT idAlcool FROM Alcools WHERE nom = 'vermouth sec')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Dry Martini')
)
,
( (SELECT idAlcool FROM Alcools WHERE nom = 'rhum blanc')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Piña Colada')
)
,
( (SELECT idAlcool FROM Alcools WHERE nom = 'rhum brun')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Piña Colada')
)
,
( (SELECT idAlcool FROM Alcools WHERE nom = 'vodka')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Bloody Mary')
)
,
( (SELECT idAlcool FROM Alcools WHERE nom = 'rhum blanc')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Daiquiri aux fraises')
)
,
( (SELECT idAlcool FROM Alcools WHERE nom = 'tequila')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Margarita')
)
,
( (SELECT idAlcool FROM Alcools WHERE nom = 'liqueur d\'agrumes')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Margarita')
)
,
( (SELECT idAlcool FROM Alcools WHERE nom = 'rhum blanc')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Cuba Libre')
)
,
( (SELECT idAlcool FROM Alcools WHERE nom = 'liqueur de pêche')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Cuba Libre Supreme')
)
,
( (SELECT idAlcool FROM Alcools WHERE nom = 'bourbon')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Cuba Libre Supreme')
)
,
( (SELECT idAlcool FROM Alcools WHERE nom = 'liqueur d\'agrumes')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Long Island iced tea')
)
,
( (SELECT idAlcool FROM Alcools WHERE nom = 'rhum blanc')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Long Island iced tea')
)
,
( (SELECT idAlcool FROM Alcools WHERE nom = 'dry gin')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Long Island iced tea')
)
,
( (SELECT idAlcool FROM Alcools WHERE nom = 'vodka')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Long Island iced tea')
)
,
( (SELECT idAlcool FROM Alcools WHERE nom = 'tequila')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Long Island iced tea')
);

#########################################
# Table IngredientsCocktails
#########################################
INSERT INTO IngredientsCocktails
( idIngredient, idCocktail )
VALUES
( (SELECT idIngredient FROM Ingredients WHERE nom = 'jus d\'orange')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Screwdriver')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'orange')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Screwdriver')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'glaçons')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Screwdriver')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'olives vertes')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Dry Martini')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'glaçons')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Dry Martini')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'crème de noix de coco')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Piña Colada')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'lait de noix de coco sucré')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Piña Colada')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'jus d\'ananas')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Piña Colada')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'glaçons')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Piña Colada')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'ananas frais')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Piña Colada')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'cerise au marasquin')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Piña Colada')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'jus de tomate')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Bloody Mary')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'jus de citron')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Bloody Mary')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'sauce Worcestershire')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Bloody Mary')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'sauce Tabasco')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Bloody Mary')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'sel de céleri')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Bloody Mary')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'poivre noir')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Bloody Mary')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'céleri')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Bloody Mary')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'glaçons')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Bloody Mary')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'jus de tomate')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Virgin Mary')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'jus de citron')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Virgin Mary')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'sauce Worcestershire')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Virgin Mary')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'sauce Tabasco')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Virgin Mary')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'sel de céleri')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Virgin Mary')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'poivre noir')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Virgin Mary')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'céleri')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Virgin Mary')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'glaçons')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Virgin Mary' )
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'jus de lime')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Daiquiri aux fraises')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'fraises congelées')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Daiquiri aux fraises')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'sirop de sucre de canne')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Daiquiri aux fraises')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'glaçons')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Daiquiri aux fraises')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'fraise')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Daiquiri aux fraises')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'pic')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Daiquiri aux fraises')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'jus d\'une demi-lime')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Margarita')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'glaçons')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Margarita')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'sel fin')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Margarita')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'lime')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Margarita')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'cola')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Cuba Libre')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'glaçons')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Cuba Libre')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'lime')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Cuba Libre')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'cola')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Cuba Libre Supreme')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'glaçons')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Cuba Libre Supreme')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'lime')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Cuba Libre Supreme')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'jus de citron')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Long Island iced tea')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'cola')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Long Island iced tea')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'citron')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Long Island iced tea')
)
,
( (SELECT idIngredient FROM Ingredients WHERE nom = 'glaçons')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Long Island iced tea')
);

#########################################
# Table UstensilesCocktails
#########################################
INSERT INTO UstensilesCocktails
( idUstensile, idCocktail )
VALUES
( (SELECT idUstensile FROM Ustensiles WHERE nom = 'shaker')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Screwdriver')
)
,
( (SELECT idUstensile FROM Ustensiles WHERE nom = 'passoire à glaçons')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Screwdriver')
)
,
( (SELECT idUstensile FROM Ustensiles WHERE nom = 'cuillère à mélange')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Dry Martini')
)
,
( (SELECT idUstensile FROM Ustensiles WHERE nom = 'verre à mélange')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Dry Martini')
)
,
( (SELECT idUstensile FROM Ustensiles WHERE nom = 'mélangeur électrique')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Piña Colada')
)
,
( (SELECT idUstensile FROM Ustensiles WHERE nom = 'cuillère à mélange')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Bloody Mary')
)
,
( (SELECT idUstensile FROM Ustensiles WHERE nom = 'verre à mélange')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Bloody Mary')
)
,
( (SELECT idUstensile FROM Ustensiles WHERE nom = 'passoire à glaçons')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Bloody Mary')
)
,
( (SELECT idUstensile FROM Ustensiles WHERE nom = 'cuillère à mélange')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Virgin Mary')
)
,
( (SELECT idUstensile FROM Ustensiles WHERE nom = 'verre à mélange')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Virgin Mary')
)
,
( (SELECT idUstensile FROM Ustensiles WHERE nom = 'passoire à glaçons')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Virgin Mary')
)
,
( (SELECT idUstensile FROM Ustensiles WHERE nom = 'mélangeur électrique')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Daiquiri aux fraises')
)
,
( (SELECT idUstensile FROM Ustensiles WHERE nom = 'shaker')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Margarita')
)
,
( (SELECT idUstensile FROM Ustensiles WHERE nom = 'passoire à glaçons')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Margarita')
)
,
( (SELECT idUstensile FROM Ustensiles WHERE nom = 'cuillère à mélange')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Cuba Libre')
)
,
( (SELECT idUstensile FROM Ustensiles WHERE nom = 'cuillère à mélange')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Cuba Libre Supreme')
)
,
( (SELECT idUstensile FROM Ustensiles WHERE nom = 'shaker')
, (SELECT idCocktail FROM Cocktails WHERE nom = 'Long Island iced tea')
);