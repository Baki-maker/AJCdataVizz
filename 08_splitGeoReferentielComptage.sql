-- Split du champ geo_point_2d pour la table comptages-routiers
USE paristraficbd;

START TRANSACTION;

-- 1. Ajout des colonnes de destination
ALTER TABLE `comptages-routiers`
    ADD COLUMN `latitude` DOUBLE NULL,
    ADD COLUMN `longitude` DOUBLE NULL;

-- 2. Extraction des valeurs et conversion
UPDATE `comptages-routiers`
SET `latitude` = CAST(SUBSTRING_INDEX(`geo_point_2d`, ',', 1) AS DECIMAL(10, 8)),
    `longitude` = CAST(TRIM(SUBSTRING_INDEX(`geo_point_2d`, ',', -1)) AS DECIMAL(11, 8))
WHERE `geo_point_2d` IS NOT NULL;

-- 3. Suppression de l'ancienne colonne brute
ALTER TABLE `comptages-routiers`
    DROP COLUMN `geo_point_2d`;

COMMIT;
SET autocommit = 1;