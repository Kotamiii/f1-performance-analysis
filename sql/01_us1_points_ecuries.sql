SELECT year, 
COUNT(*) 
FROM races 
WHERE year >=2014
GROUP BY year;
-- Requête permettant de verifier la qualité des données en regardant le nombre de courses par an
-- depuis 2014 ( environ 20 ce qui est correct)

SELECT status.status, races.year, COUNT(*)
FROM results
JOIN status USING(statusId)
JOIN races USING(raceId)
WHERE races.year >= 2014 AND status.status = 'Accident'
GROUP BY status.status,races.year
ORDER BY 3 DESC;

--Permet de voir de 2014 à 2024, quelle année à eu le plus de status = 'Accident'