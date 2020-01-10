//
//  CustomCapsuleView.swift
//  PageControllerDemo
//
//  Created by LAPSHOP.IN on 08/01/20.
//  Copyright © 2020 BOPPO TECHNOLOGIES. All rights reserved.
//

import UIKit

@IBDesignable
class CustomCapsuleView: UIView {
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
           didSet {
               self.layer.cornerRadius = cornerRadius
           }
       }
    
}
