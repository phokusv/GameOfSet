//
//  CarteView.swift
//  GameOfSet
//
//  Created by VJB on 08/09/2018.
//  Copyright © 2018 VJB. All rights reserved.
//

import UIKit
@IBDesignable

class BoutonDeCarte: UIButton {
    
    
    var carte = Carte.init(nombre: .un, couleur: .bleu, symbole: .symbole1, remplissage: .plein) { didSet {setNeedsDisplay()}}
    
    func creationLabelAvecSymbole(carte: Carte) -> UILabel {
        // D abord definir le string qui correspond au symbole
        var texte = String(carte.symbole.rawValue)
        //print(texte)
        // Puis le repeter le bon nombre de fois
        if carte.nombre.rawValue > 1 {
            texte += "\n" + String(carte.symbole.rawValue)}
        if carte.nombre.rawValue > 2 {
            texte += "\n" + String(carte.symbole.rawValue)}
        // Puis definir son format (couleur, grisage, centrage, taille)
        var font = UIFont.preferredFont(forTextStyle: .body).withSize(Constantes.tailleDeSymbole)
        font = UIFontMetrics(forTextStyle: .body).scaledFont(for: font)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        // Et enfin le retourner sous forme de NSAttributedString puis de UILabel
        let texteFormatte = NSAttributedString(string: texte, attributes: [.font: font, .paragraphStyle: paragraphStyle])
       // print(texteFormatte)
        let label = UILabel()
        label.attributedText = texteFormatte
        return label
    }
    
    // TO DO: use cornerradius property of view onstead ? Direclty configure label without intermiedary view ? Change backgroundcolor in class and not in outlet !
    
    override func draw(_ rect: CGRect) {
        let roundedRect = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        UIColor.white.setFill()
        roundedRect.fill()
        roundedRect.addClip()
        let subviewDuTexte = creationLabelAvecSymbole(carte: carte)
        addSubview(subviewDuTexte)
        //print(subviewDuTexte.text ?? "La Subview n'a pas de texte bizarrement")
    }
    
}

// Parametrisation de la view (ie constantes)
extension BoutonDeCarte {
    
    struct Constantes {
        static let cornerRadiusRatio = CGFloat(0.1)
        static let tailleDeSymbole = CGFloat(30)
    
    }
    
    var cornerRadius:CGFloat { return bounds.size.height * Constantes.cornerRadiusRatio}
    
}
