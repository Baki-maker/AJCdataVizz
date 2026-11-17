# 🚦 Tableau de Bord - Analyse du Trafic Routier Parisien

> Projet de Business Intelligence & Data Engineering visant à analyser, modéliser et restituer les flux de circulation de la ceinture parisienne (Périphérique Intérieur/Extérieur).

---

## 📌 Aperçu du Dashboard

### 1. Macro Synthèse & Prévisions (Page 1)
*Description rapide de la vue macro et des choix techniques.*
> ![Aperçu Page 1](./docs/screenshots/page1_synthese.png)

### 2. Analyse Spatiale & Cartographie (Page 2)
*Mise en valeur de la répartition géographique des capteurs et des pics d'occupation.*
> ![Aperçu Page 2](./docs/screenshots/page2_spatial.png)

### 3. Analyse Temporelle & Indicateurs Critiques (Page 3)
*Mise en avant des mesures DAX temporelles (`Heure_Pointe_Critique`, `Debit_Max_Horaire`, `Heures_Saturees`).*
> ![Aperçu Page 3](./docs/screenshots/page3_temporel.png)

---

## 🛠️ Stack Technique & Architecture
* **Source des données :** Open Data Paris (`comptages-routiers-permanents`).
* **Stockage & ETL :** MySQL 8.0, Talend Open Studio (pipelines de transformation).
* **Restitution & DAX :** Microsoft Power BI (Modélisation en étoile, mesures DAX avancées).

## 💡 Extraits de code DAX clés (`/dax`)
Exemple de mesure calculée pour l'heure de pointe critique :
```dax
Heure_Pointe_Critique = 
VAR HeureMax = 
    CALCULATE(
        SELECTEDVALUE('ta_table'[Heure_Comptage]),
        TOPN(
            1,
            ALL('ta_table'[Heure_Comptage]),
            CALCULATE(SUM('ta_table'[Debit_h])),
            DESC
        )
    )
RETURN
    IF(NOT(ISBLANK(HeureMax)), FORMAT(HeureMax, "00") & "h", "N/A")
