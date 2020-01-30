//
//  RoundView.swift
//  Brisk Drive
//
//  Created by Apple on 30/01/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class RoundView: UIView {
    
    override func draw(_ rect: CGRect) {
        layer.cornerRadius = 10
        layer.masksToBounds = true
    }

}



class ShadowView: UIView {
    
//    override func draw(_ rect: CGRect) {
//        layer.cornerRadius = 10
//        layer.masksToBounds = true
//        layer.layoutSublayers()
//        layer.shadowOffset = CGSize(width: 0, height: 2)
//        layer.shadowOpacity = 0.2
//        layer.shadowRadius = 3
//        layer.masksToBounds = false
//    }
    
    override func draw(_ rect: CGRect) {
        let shadowLayer = CAShapeLayer()
        shadowLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: 10).cgPath
        shadowLayer.fillColor = UIColor.white.cgColor
        shadowLayer.shadowPath = shadowLayer.path
        shadowLayer.shadowOffset = CGSize(width: 0, height: 2.0)
        shadowLayer.shadowOpacity = 0.2
        shadowLayer.shadowRadius = 3
        layer.insertSublayer(shadowLayer, at: 0)
    }
}


