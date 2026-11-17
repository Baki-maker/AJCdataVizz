-- Remplacement des accents dans la table comptages-routiers


USE `parisTraficBD`;

ALTER TABLE `comptages-routiers` 
CHANGE COLUMN `Débit_horaire` `Debit_horaire` VARCHAR(255);