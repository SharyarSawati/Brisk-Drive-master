//
//  ShadowTextField.swift
//  Brisk Drive
//
//  Created by Apple on 30/01/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ShadowTextField: UITextField {

    override func draw(_ rect: CGRect) {
        // Drawing code
        layer.shadowOffset = CGSize(width: 0, height: 2)
        layer.shadowRadius = 3
        layer.shadowOpacity = 0.2
    }

}

