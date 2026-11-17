-- Identification des colonnes contenat un espace dans leur libelle

USE paristraficbd;

SELECT COLUMN_NAME 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_SCHEMA = 'parisTraficBD' 
  AND TABLE_NAME = 'referentiel-comptages' 
  AND COLUMN_NAME LIKE '% %';