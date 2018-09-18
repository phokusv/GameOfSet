//
//  ViewController.swift
//  GameOfSet
//
//  Created by VJB on 08/09/2018.
//  Copyright © 2018 VJB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var CarteView: BoutonDeCarte! {didSet {
        CarteView.carte = Carte.init(nombre: .un, couleur: .bleu, symbole: .symbole1, remplissage: .plein)
        CarteView.backgroundColor = UIColor.black
        }}
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

