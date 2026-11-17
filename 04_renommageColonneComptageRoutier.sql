-- Remplacement des espaces par des _ dans la table comptages-routiers


USE `parisTraficBD`;

ALTER TABLE `comptages-routiers` 
CHANGE COLUMN `Date debut dispo data` `Date_debut_dispo_data` VARCHAR(255),
CHANGE COLUMN `Date et heure de comptage` `Date_et_heure_de_comptage` VARCHAR(255),
CHANGE COLUMN `Date fin dispo data` `Date_fin_dispo_data` VARCHAR(255),
CHANGE COLUMN `Débit horaire` `Débit_horaire` VARCHAR(255),
CHANGE COLUMN `Etat arc` `Etat_arc` VARCHAR(255),
CHANGE COLUMN `Etat trafic` `Etat_trafic` VARCHAR(255),
CHANGE COLUMN `Identifiant arc` `Identifiant_arc` VARCHAR(255),
CHANGE COLUMN `Identifiant noeud amont` `Identifiant_noeud_amont` VARCHAR(255),
CHANGE COLUMN `Identifiant noeud aval` `Identifiant_noeud_aval` VARCHAR(255),
CHANGE COLUMN `Libelle noeud amont` `Libelle_noeud_amont` VARCHAR(255),
CHANGE COLUMN `Libelle noeud aval` `Libelle_noeud_aval` VARCHAR(255),
CHANGE COLUMN `Taux d'occupation` `Taux_d_occupation` VARCHAR(255);