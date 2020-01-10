//
//  HomeViewController.swift
//  PageControllerDemo
//
//  Created by LAPSHOP.IN on 08/01/20.
//  Copyright © 2020 BOPPO TECHNOLOGIES. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    let scrollView: UIScrollView = {
        let v = UIScrollView()
        v.showsVerticalScrollIndicator = false
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = #colorLiteral(red: 0.9983376861, green: 0.9576714635, blue: 0.8959006667, alpha: 1)
        return v
    }()
    
    let view1: UIView = {
        let view1 = UIView()
        view1.heightAnchor.constraint(equalToConstant: 400).isActive = true
        return view1
    }()
    
    let view2: UIView = {
        let view1 = UIView()
        view1.heightAnchor.constraint(equalToConstant: 280).isActive = true
        
        return view1
    }()
    
    let view3: UIView = {
        let view1 = UIView()
        view1.heightAnchor.constraint(equalToConstant: 400).isActive = true
        
        return view1
    }()
    
    let view4: UIView = {
        let view1 = UIView()
        view1.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        return view1
    }()
    
    let view5: UIView = {
        let view1 = UIView()
        view1.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        return view1
    }()
    
    let scrollViewContainer: UIStackView = {
        let view = UIStackView()
        
        view.axis = .vertical
        view.spacing = 5
        view.alignment = .fill

        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var scanVC = UIViewController()
    var scanTshirtVC = UIViewController()
    var whatsNewVC = UIViewController()
    var storyTimeVC = UIViewController()

    var mcQuizVC = UIViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // initial view controllers
        scanVC = initiateViewController("ScanVC")
        scanTshirtVC = initiateViewController("ScanTshirt")
        whatsNewVC = MyCollectionViewController()
        storyTimeVC = initiateViewController("StoryTime")
        mcQuizVC = initiateViewController("McQuiz")
        
        view.backgroundColor = #colorLiteral(red: 0.9983376861, green: 0.9576714635, blue: 0.8959006667, alpha: 1)
        view.addSubview(scrollView)
        
//        view1.addSubview(scanVC.view)
//        scanVC.didMove(toParent: self)
//
//        view2.addSubview(scanTshirtVC.view)
//        storyTimeVC.didMove(toParent: self)
//
//        view3.addSubview(whatsNewVC.view)
//        storyTimeVC.didMove(toParent: self)
//
//        view4.addSubview(storyTimeVC.view)
//        storyTimeVC.didMove(toParent: self)
//
//        view5.addSubview(mcQuizVC.view)
//        storyTimeVC.didMove(toParent: self)
        
        addViewFromViewController(view: view1, asChildViewController: scanVC)
        addViewFromViewController(view: view2, asChildViewController: scanTshirtVC)
        addViewFromViewController(view: view3, asChildViewController: whatsNewVC)
        addViewFromViewController(view: view4, asChildViewController: storyTimeVC)
        addViewFromViewController(view: view5, asChildViewController: mcQuizVC)
        
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0.0),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0.0),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0.0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0.0),
            scrollView.widthAnchor.constraint(equalTo: view.widthAnchor)

        ])
        scrollView.addSubview(scrollViewContainer)

        scrollViewContainer.addArrangedSubview(view1)
        scrollViewContainer.addArrangedSubview(view2)
        scrollViewContainer.addArrangedSubview(view3)
        scrollViewContainer.addArrangedSubview(view4)
        scrollViewContainer.addArrangedSubview(view5)
        
        NSLayoutConstraint.activate([
            scrollViewContainer.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0.0),
            scrollViewContainer.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0.0),
            scrollViewContainer.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0.0),
            scrollViewContainer.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -40.0),
        ])
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        scrollView.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
    }
    
    func initiateViewController(_ viewController: String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil) .
            instantiateViewController(withIdentifier: viewController)
    }
    
    // Add Child View Controller
    private func addViewFromViewController(view: UIView, asChildViewController viewController: UIViewController) {
        addChild(viewController)
        view.addSubview(viewController.view)
        viewController.didMove(toParent: self)
    }

}
