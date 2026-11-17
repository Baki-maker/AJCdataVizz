# Analyse du Trafic Routier à Paris (MySQL & Power BI)

Conception d'une chaîne décisionnelle complète (ETL SQL et Business Intelligence) à partir des données Open Data de la Ville de Paris (*Comptages routiers permanents*).

## 1. Architecture Technique & Pipeline de Données

`Open Data Paris` ➔ `MySQL 8.0 / Navicat` ➔ `Power BI Desktop`

* **Échantillonnage (`00_echantillonnage.sql`)** : Extraction maîtrisée pour garantir la fluidité des traitements[cite: 6].
* **Normalisation des schémas (`01_` à `05_`)** : Identification des colonnes, renommage standardisé et nettoyage des caractères accentués[cite: 6].
* **Typage temporel (`06_` & `07_`)** : Conversion stricte des formats `DATE` / `DATETIME`[cite: 6].
* **Traitement géographique (`08_splitGeo...`)** : Découpage des coordonnées brutes en `Latitude` / `Longitude`[cite: 6].

## 2. Restitution & Analyse sous Power BI (`parisTraficDatavizz_01.pbix`)

* **Page 1 — `syntheseTrafic` (Vue Macro)** : Indicateurs globaux de charge routière + **cône de prévision** natif à court terme.
* **Page 2 — `analyseSpatiale` (Cartographie & Facteurs Racines)** : Carte interactive du réseau parisien + **arbre de décomposition intelligente** pour isoler les facteurs de saturation.
* **Page 3 — `analyseTemporelle` (Dynamique Chronologique)** : Évolution des flux dans le temps + **détection automatique d'anomalies**.# AJCdataVizz
