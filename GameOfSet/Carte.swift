//
//  Carte.swift
//  GameOfSet
//
//  Created by VJB on 08/09/2018.
//  Copyright © 2018 VJB. All rights reserved.
//

import Foundation

// MARK: Definition de ce qu'est une carte

struct Carte: CustomStringConvertible, Hashable {
    var nombre: Nombre
    var couleur: Couleur
    var symbole: Symbole
    var remplissage: Remplissage
    
    var description: String {
        return String(nombre.rawValue)+String(couleur.rawValue)+String(symbole.rawValue)+String(remplissage.rawValue)
    }
    
    enum Nombre: Int {
        case un = 1, deux, trois
        static var univers = [un, deux, trois]
    }
    
    enum Couleur: Int {
        case rouge = 1 , vert, bleu
        static var univers = [rouge, vert, bleu]
    }
    
    enum Symbole: Int {
        case symbole1 = 1, symbole2, symbole3
        static var univers = [symbole1, symbole2, symbole3]
    }
    
    enum Remplissage: Int {
        case plein = 1, semi, vide
        static var univers = [plein, semi, vide]
    }
    
    static func comparerCartes(_ carte1: Carte, _ carte2: Carte) -> [Bool] {
        var resultatComparaison = [Bool]() 
        resultatComparaison.append(carte1.nombre==carte2.nombre)
        resultatComparaison.append(carte1.couleur==carte2.couleur)
        resultatComparaison.append(carte1.symbole==carte2.symbole)
        resultatComparaison.append(carte1.remplissage==carte2.remplissage)
        return resultatComparaison
    }
}
