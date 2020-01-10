//
//  CustomPageController.swift
//  PageControllerDemo
//
//  Created by LAPSHOP.IN on 08/01/20.
//  Copyright © 2020 BOPPO TECHNOLOGIES. All rights reserved.
//

import UIKit

class CustomPageController: UIViewController {

    @IBOutlet weak var skipButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        skipButton.addTarget(self, action: #selector(skipButtonClicked), for: .touchUpInside)
    }
    

    @objc
    func skipButtonClicked() {
        navigationController?.pushViewController(HomeViewController(), animated: true)
    }
}
