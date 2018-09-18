//
//  Joueur.swift
//  GameOfSet
//
//  Created by VJB on 15/09/2018.
//  Copyright © 2018 VJB. All rights reserved.
//

import Foundation

// MARK: Definition d'un joueur
struct Joueur {
    var identifiant: Int // Doit être entre 1 et 4, chiffre donné par la vue (coin d'écfan) qui sera tapée
    var score: Int = 0
    var dansLaPartieActuelle : Bool = false // Afin de savoir s'il participe à la partie
    
    init(identifiant: Int) {
        self.identifiant = identifiant
    }
    
    static var joueurAyantLaMain: Int = 0 //Afin de savoir auquel des 4 joueurs attribuer les points. 0 signifie aucun.
    
}
