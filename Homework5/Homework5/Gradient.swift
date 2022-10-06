//
//  Gradient.swift
//  Homework5
//
//  Created by Erdal Yalçın on 4.10.2022.
//

import Foundation
import UIKit


extension UIView {

    @discardableResult
    func setGradietColor(colorOne: UIColor, colorTwo: UIColor) -> CALayer {

        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.0,1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x :0.0, y: 0.75)
        layer.insertSublayer(gradientLayer, at: 0)
        return layer
   }
}
