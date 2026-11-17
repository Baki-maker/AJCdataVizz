-- Identification des colonnes contenat un espace dans leur libelle pour la table comptages-routiers

USE `parisTraficBD`;
SELECT COLUMN_NAME 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_SCHEMA = 'parisTraficBD' 
  AND TABLE_NAME = 'comptages-routiers' 
  AND COLUMN_NAME LIKE '% %';