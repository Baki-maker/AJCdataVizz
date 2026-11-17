
-- Echantillonnage de la base de référence car trop gros volume

USE paristraficbd;

-- Precaution
DROP TABLE IF EXISTS `comptages_routiers_sample`;

-- 100 000 lignes
CREATE TABLE `comptages_routiers_sample` AS
SELECT * 
FROM `comptages-routiers`
LIMIT 100000;

