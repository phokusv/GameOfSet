//
//  File.swift
//  GameOfSet
//
//  Created by VJB on 08/09/2018.
//  Copyright © 2018 VJB. All rights reserved.
//

import Foundation

// MARK: Structure de set de carte (que je garde sous forme d'array (vs Set) au cas où la notion d'rodre soit un jour importante

struct SetDeCarte {
    var set = [Carte]()
    
    static let univers:[Carte] = {
        var universEnConstruction:[Carte]=[]
        for nombre in Carte.Nombre.univers {
            for couleur in Carte.Couleur.univers {
                for symbole in Carte.Symbole.univers {
                    for remplissage in Carte.Remplissage.univers {
                        universEnConstruction.append(Carte(nombre: nombre, couleur: couleur, symbole: symbole, remplissage: remplissage))
                    }
                }
            }
        }
        return universEnConstruction
    }()
    
    
    mutating func tirerCartes(nombre: Int) -> SetDeCarte? { // TO FIX probleme si n<1
        if self.set.count < nombre {return nil}
        else {
            var setTire = SetDeCarte()
            for _ in 1...nombre {
                setTire.set.append(self.set.remove(at: self.set.count.arc4Random))
            }
            return setTire
        }
    }
    
    mutating func soustraireUnSet(SetSoustrait: SetDeCarte) {
        self.set = Array(Set(self.set).subtracting(Set(SetSoustrait.set)))
    }
    
    mutating func ajouterUnSet(SetSoustrait: SetDeCarte) {
        self.set = Array(Set(self.set).union(Set(SetSoustrait.set)))
    }
    
    func constitueUnSetValide() -> Bool {
        if self.set.count != 3 {return false}
        else {
            if Carte.comparerCartes(set[0], set[1]) == Carte.comparerCartes(set[1], set[2]) {return true} else {return false}
        }
    }
    
}

// MARK: Creation fonction de random pour pouvoir tirer des cartes
extension Int {
    var arc4Random: Int {
        switch self {
        case 1...Int.max:
            return Int(arc4random_uniform(UInt32(self)))
        case -Int.max..<0:
            return Int(arc4random_uniform(UInt32(self)))
        default:
            return 0
        }
    }
}


