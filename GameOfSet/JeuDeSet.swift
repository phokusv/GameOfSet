//
//  JeuDeSet.swift
//  GameOfSet
//
//  Created by VJB on 15/09/2018.
//  Copyright © 2018 VJB. All rights reserved.
//

import Foundation

// Logique de jeu
/* -OK Définir un set pioche et un set de table
 -OK Distribuer une à une les cartes de la pioche à la table
 -OK Distribuer 3 par 3 une fois franchie douze
 -OK Vérifier qu'un groupe de trois sélectionné répond à la règle
 - Retirer du set sur la table des paquets de trois correspondant à la règle
 - Compter les points pour chaque joueur
 - Lancer un chrono de 3 secondes pour un joueur ayant taper sur son bouton
 -OK Création de chaque joueur
 - Identifier fin du jeu, et affichage des résultats finaux
 - Lancer un nouveau jeu depuis le bouton "New Game"
 - Jusqu'à quatre joueur qui tapent sur leur coin d'écran pour lancer 3 secondes pour choisir leur set (et penalite s'ils se trompent)
 - Fonction de création d'un set par sélection de trois cartes, pour test subséquent de correspondance à la logique
 */


// Définir le nombre de joueurs et les activer

class JeuDeSet {
    
var joueurs = [Joueur(identifiant: 1), Joueur(identifiant: 2), Joueur(identifiant: 3), Joueur(identifiant: 4)]
    
func activerUnJoueur(identifiantDuJoueur: Int, actif: Bool) { // où identifiant est donné envoyé par un bouton de côté d'écran (donc a priori pas de valeur impossible
    joueurs[identifiantDuJoueur-1].dansLaPartieActuelle = actif
}

// Définir la pioche et le set de table
var setPioche = SetDeCarte()
// setPioche.set = SetDeCarte.univers
var setDeTable = SetDeCarte()

}

/* Pour Controller:
 - TO DO: désactiver (ishidden) les boutons des joueurs non activés trois secondes apres premier bouton cliqué
 - Déployer progressivement les cartes sur l'écran.
 - Déployer trois par trois en phase deux
 - Interruption de dépose quand un joueur tente sa chance (ie pousse son bouton)
 - Création d'un set sur selection de trois cartes, et test de validité
 - Proposer de relancer une nouvelle partie sur un Swipe (popup necessaire pour eviter une erreur)
 - Afficher 21 cadres de cartes (3x7), 20 étant le nombre maximum de cartes sans match
 
 */
