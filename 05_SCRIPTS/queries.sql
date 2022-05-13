
SELECT idArt,libArt,txtArt,dtcreArt
FROM article
ORDER BY dtcreArt ASC;

SELECT aut.idAut,aut.nomAut,aut.prenomAut
FROM auteur aut
ORDER BY aut.nomAut ASC,  aut.prenomAut ASC;

SELECT idArt,libArt,txtArt,dtcreArt
FROM article
WHERE idArt = 3;

SELECT aut.idAut,aut.nomAut,aut.prenomAut
FROM auteur aut
WHERE aut.idAut = 2;

SELECT idArt,libArt,txtArt,dtcreArt
FROM article
ORDER BY dtcreArt DESC
LIMIT 3;

SELECT aut.idAut, aut.nomAut,
	art.idArt,art.libArt,art.txtArt,art.dtcreArt
FROM auteur aut
INNER JOIN article art ON art.idAut = aut.idAut;

SELECT aut.idAut, aut.nomAut,
	art.idArt,art.libArt,art.txtArt,art.dtcreArt
FROM auteur aut
INNER JOIN article art ON art.idAut = aut.idAut;


SELECT aut.idAut, aut.nomAut,
	art.idArt,art.libArt,art.txtArt,art.dtcreArt
FROM auteur aut
INNER JOIN article art ON art.idAut = aut.idAut
WHERE aut.idAut=6;


SELECT aut.idAut, aut.nomAut,
	art.idArt,art.libArt,art.txtArt,art.dtcreArt
FROM auteur aut
INNER JOIN article art ON art.idAut = aut.idAut
WHERE aut.idAut=6;


SELECT aut.prenomAut, aut.nomAut, COUNT(art.idArt)
FROM auteur aut
INNER JOIN article art ON art.idAut = aut.idAut
GROUP BY aut.prenomAut, aut.nomAut

---- ne marche pas ------
SELECT aut.prenomAut, aut.nomAut, COUNT(art.idArt)
FROM auteur aut
INNER JOIN article art ON art.idAut = aut.idAut
GROUP BY aut.prenomAut, aut.nomAut
ORDER BY COUNT(id.idArt) DESC
LIMIT 1;
----- > ????? order by count(id.idArt) ?????

DELETE 
FROM article
WHERE idArt = 3;

UPDATE article
SET libArt = 'nouveau libelé'
where idArt = 5;





