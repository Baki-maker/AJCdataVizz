USE `parisTraficBD`;

ALTER TABLE `referentiel-comptages` 
CHANGE COLUMN `Date debut dispo data` `Date_debut_dispo_data` VARCHAR(255),
CHANGE COLUMN `Date fin dispo data` `Date_fin_dispo_data` VARCHAR(255),
CHANGE COLUMN `Identifiant arc` `Identifiant_arc` VARCHAR(255),
CHANGE COLUMN `Identifiant noeud amont` `Identifiant_noeud_amont` VARCHAR(255),
CHANGE COLUMN `Identifiant noeud aval` `Identifiant_noeud_aval` VARCHAR(255),
CHANGE COLUMN `Libelle noeud amont` `Libelle_noeud_amont` VARCHAR(255),
CHANGE COLUMN `Libelle noeud aval` `Libelle_noeud_aval` VARCHAR(255);