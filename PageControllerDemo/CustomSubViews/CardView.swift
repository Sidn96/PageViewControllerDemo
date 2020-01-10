//
//  CardView.swift
//  PageControllerDemo
//
//  Created by LAPSHOP.IN on 08/01/20.
//  Copyright © 2020 BOPPO TECHNOLOGIES. All rights reserved.
//

import UIKit

@IBDesignable
class CardView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
//        fatalError("init(coder:) has not been implemented")
        setupView()
    }
    
    func setupView() {
        layer.cornerRadius = 16.0
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        layer.shadowRadius = 12.0
        layer.shadowOpacity = 0.7
    }

}
