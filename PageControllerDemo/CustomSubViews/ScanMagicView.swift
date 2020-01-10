//
//  ScanMagicView.swift
//  PageControllerDemo
//
//  Created by LAPSHOP.IN on 08/01/20.
//  Copyright © 2020 BOPPO TECHNOLOGIES. All rights reserved.
//

import UIKit

class ScanMagicView: UIView {
    
    let qrCodeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "qr_code")
        return imageView
    }()
    
    let scanLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .left
        label.text = "Scan \n Magic Gift"
        label.font.withSize(20.0)
        return label
    }()
    
    let magicGiftDescriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .left
        label.text = "You can unlock a fun edutainment feature every time you buy from Cub McPaws. Simply open the app, scan the code and enjoy the magic. "
        label.font.withSize(12.0)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupView() {
        // cardView
        layer.cornerRadius = 20.0
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        layer.shadowRadius = 12.0
        layer.shadowOpacity = 0.7
        
        addSubview(qrCodeImageView)
        NSLayoutConstraint.activate([
            qrCodeImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8.0),
            qrCodeImageView.topAnchor.constraint(equalTo: topAnchor, constant: 8.0),
            qrCodeImageView.widthAnchor.constraint(equalToConstant: 100),
            qrCodeImageView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        addSubview(scanLabel)
        NSLayoutConstraint.activate([
            scanLabel.leadingAnchor.constraint(equalTo: qrCodeImageView.trailingAnchor, constant: 8.0),
            scanLabel.topAnchor.constraint(equalTo: topAnchor, constant: 28.0),
            scanLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 8.0),
        ])
        
        addSubview(magicGiftDescriptionLabel)
        NSLayoutConstraint.activate([
            magicGiftDescriptionLabel.leadingAnchor.constraint(equalTo: qrCodeImageView.trailingAnchor, constant: 8.0),
            magicGiftDescriptionLabel.topAnchor.constraint(equalTo: qrCodeImageView.bottomAnchor, constant: 8.0),
            magicGiftDescriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 8.0),
        ])
    }
    
}
