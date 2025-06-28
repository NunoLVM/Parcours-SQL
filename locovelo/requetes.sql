SELECT *
FROM velo
WHERE disponibilite = TRUE;

SELECT *
FROM location
WHERE id_client = 1;

SELECT COUNT(*) AS total_locations
FROM location;

SELECT SUM(montant_total) AS revenus_totaux
FROM location;

SELECT YEAR(date_heure_debut) AS annee,
    MONTH(date_heure_debut) AS mois,
    SUM(montant_total) AS revenu_total
FROM location
GROUP BY annee,
    mois
ORDER BY annee,
    mois;