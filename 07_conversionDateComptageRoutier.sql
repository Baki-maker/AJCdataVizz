-- Conversion des colonnes de dates textuelles (VARCHAR) au format natif DATETIME pour la table comptages-routiers


USE `parisTraficBD`;

-- Désactive l'enregistrement automatique pour cette session
SET autocommit = 0;

-- Démarre la transaction
START TRANSACTION;

-- Nettoyage robuste sur les 3 champs de date
UPDATE `comptages-routiers` 
SET `Date_debut_dispo_data` = REPLACE(SUBSTRING(`Date_debut_dispo_data`, 1, 19), 'T', ' '),
    `Date_et_heure_de_comptage` = REPLACE(SUBSTRING(`Date_et_heure_de_comptage`, 1, 19), 'T', ' '),
    `Date_fin_dispo_data` = REPLACE(SUBSTRING(`Date_fin_dispo_data`, 1, 19), 'T', ' ');

-- Passage du type VARCHAR au type natif DATETIME pour les 3 colonnes
ALTER TABLE `comptages-routiers` 
MODIFY COLUMN `Date_debut_dispo_data` DATETIME,
MODIFY COLUMN `Date_et_heure_de_comptage` DATETIME,
MODIFY COLUMN `Date_fin_dispo_data` DATETIME;

COMMIT;
SET autocommit = 1;