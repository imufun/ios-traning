//
//  extension.swift
//  Class 5 TableView
//
//  Created by Brisk on 1/26/19.
//  Copyright © 2019 Brisk. All rights reserved.
//

import UIKit

extension UIView {
    
    func setGradient (color1 : UIColor, color2 : UIColor) {
        
        let gradlayer  = CAGradientLayer()
        gradlayer.frame = bounds
        gradlayer.colors = [color1.cgColor, color2.cgColor]
        gradlayer.locations = [0.0,1.0]
        gradlayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradlayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        
        layer.insertSublayer(gradlayer, at: 0)
    }
}
