//
//  CustomShapeVC.swift
//  PageControllerDemo
//
//  Created by BOPPO TECHNOLOGIES on 10/01/20.
//  Copyright © 2020 BOPPO TECHNOLOGIES. All rights reserved.
//

import UIKit

class CustomShapeVC: UIViewController {
    
    
    @IBOutlet weak var backGround: McQuizBackgroundView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let width: CGFloat = UIScreen.main.bounds.width
        let height: CGFloat = UIScreen.main.bounds.height
        
        let demoView = McQuizBackgroundView(frame: CGRect(x: width/4,
                                              y: height/4,
                                              width: width,
                                              height: 300))
        
        self.backGround.addSubview(demoView)
    }
//    
}
