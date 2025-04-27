//
//  gradients.swift
//  testandoUiKit
//
//  Created by Vítor Bruno on 25/04/25.
//

import Foundation
import UIKit

//faz uma extensao de UIView
extension UIView{
    func gradientColor(colorOne: UIColor, colorTwo: UIColor){
        layer.sublayers?.removeAll(where: { $0 is CAGradientLayer }) //remove a layer se ela ja existe
        
        let gradientLayer = CAGradientLayer() //chama instancia de CAGradientLayer
        gradientLayer.frame = self.bounds //pega o bounds do elemento q for chamado
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]//cores
        gradientLayer.locations = [0,1]//localizacao do gradiente
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1) //sentido do gradiente
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0)
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
    
    
}
