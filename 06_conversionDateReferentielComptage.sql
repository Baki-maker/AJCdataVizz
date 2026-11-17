-- Conversion des colonnes de dates textuelles (VARCHAR) au format natif DATETIME pour la table referentiel-comptages

USE `parisTraficBD`;

-- Desactivation de l'enregistrement automatique pour cette session
SET autocommit = 0;

-- Demarrage de la transaction
START TRANSACTION;

-- Nettoyage propre : on prend les 19 premiers caractères et on neutralise le 'T' s'il est présent
UPDATE `referentiel-comptages` 
SET `Date_debut_dispo_data` = REPLACE(SUBSTRING(`Date_debut_dispo_data`, 1, 19), 'T', ' '),
    `Date_fin_dispo_data` = REPLACE(SUBSTRING(`Date_fin_dispo_data`, 1, 19), 'T', ' ');

-- Passage du type VARCHAR au type natif DATETIME
ALTER TABLE `referentiel-comptages` 
MODIFY COLUMN `Date_debut_dispo_data` DATETIME,
MODIFY COLUMN `Date_fin_dispo_data` DATETIME;

COMMIT;
SET autocommit = 1;