//
//  DemoView.swift
//  PageControllerDemo
//
//  Created by LAPSHOP.IN on 10/01/20.
//  Copyright © 2020 BOPPO TECHNOLOGIES. All rights reserved.
//

import UIKit

class McQuizBackgroundView: UIView {
    var path: UIBezierPath!
     
    override init(frame: CGRect) {
        super.init(frame: frame)
     
        self.backgroundColor = UIColor.darkGray
        complexShape()
    }
     
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        complexShape()
    }
    
    func complexShape() {
        path = UIBezierPath()
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        path.addLine(to: CGPoint(x: self.frame.size.width, y: 0.0))
        path.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
        path.addCurve(to: CGPoint(x: 0, y: self.frame.size.height),
                      controlPoint1: CGPoint(x: self.frame.size.width - (self.frame.size.width/4), y: self.frame.size.height - (self.frame.size.height/4)),
                      controlPoint2: CGPoint(x: self.frame.size.width/4, y: self.frame.size.height - (self.frame.size.height/4)))
        path.addLine(to: CGPoint(x: 0.0, y: self.frame.size.height))
        path.close()
     
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
     
        self.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        self.layer.mask = shapeLayer
    }
}
