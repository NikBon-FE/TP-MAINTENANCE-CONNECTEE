/**Back-end ; utilisé pour traiter les différentes commandes database

REFLEXION BACKEND
    Problématique - Lire la valeur de la donnée 

    - 1) Capteur (Passerelle) --> API (LECTURE DE LA VARIBALE DU CAPTEUR DEPUIS L'API) 
        Créer un programme qui peut lire la donnée attribuée à la variable (TEMPERATURE °C)
        Information concernant si la Zone 3 est actuellement lancé (%M640)

    - 2) Base de donnée --> Table
        Création de la base de données 
        login: bocquetbontempsbouree
        password: olivier

        REFLEXION DU FORMAT DELA BASE DE DONNEE

    - 3) Programmation du code (PHP)
        BDD
            Récuperer les données (1)
            "Historisé" les mesures de températures/vérif si auto et lancé

        HTML (PHP?)
            Message précisant si un cycle auto zone 3 est lancé
            Visualisation de la température
            Possibilité de saisir sur page WEB des seuils de températures (Déterminés par la personne qui utilise le programme)
            Création d'un graphe, avec l'évolution de la température et le seuil identiés de 
            Création d'un document "seuils.csv" a chaque changement de valeur d'un seuil
            --> selon données identifiés + seuil - Alarme est crée, avec niveau de criticité. Update d'un document .csv 
            --> selon "évolution de la pente - déterminer dans "x" seconde elle va atteindre un seuil très bas/trs haut (si entre seuil bas et trs bas/haut et très haut)

        PowerBI Desktop (bocquetbontempsbourre.pbix)
            Réalisation du tableau de bord lisant
            
            
    DONNEES BACKEND NECESSAIRES:
         - tableur lecture de donnée automate, (autom) avec:
            ID
            lecture du mot de température - (tempVar)
            lecture de si la zone est en auto ou non - (autoVar)
            Temps de collecte de l'information - (dateAutom)

         - tableur modification des nouveaux seuils, (seuil) avec:
            ID
            valeur associé au seuil très bas - (seuilTB)
            valeur associé au seuil bas - (seuilB)
            valeur associé au seuil haut - (seuilH)
            valeur associé au seuil très haut - (seuilTH)
            date de modification des valeurs (dateSeuil)

         - tableur alarme du site HTML, (alarme) avec:
            ID
            type d'alarme qui a été déclenché (très haut vs haut vs bas vs tres bas) - (typeAlarme)
            date d'activation de l'alarme (dateAlarme)
            valeure planifié, basé en calculant la pente basée sur X valeurs précédentes (penteAlarme)

Usage:
======
    Javascript index.js

    (inserer ici chaque fonction de push/pull)
    app.post:
        autom/read - permet de lire la valeur actuelle de l'automate

        seuil/input - créer/modifier les seuils associés au code ; modifier le classeur "seuil.csv" avec la valeur
        seuil/read - retirer les valeurs nécessaire pour faire fonctionner le graphe
            

        alarme/input - inserer une valeur dans le classeur "alarme.csv"
**/

__authors__ = ("Nicolas Bontemps, Eloise Bourre, Maxime Bocquet")
__contact__ = ("nicolas.bontemps@etu.unilasalle.fr, eloise.bourre@etu.unilasalle.fr, maxime.bocquet@etu.unilasalle.fr")
__copyright__ = "Unilasalle Amiens"
__date__ = "2025-03-31"
__version__= "1.0.0"

