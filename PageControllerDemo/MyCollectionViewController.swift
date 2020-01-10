//
//  MyCollectionViewController.swift
//  PageControllerDemo
//
//  Created by LAPSHOP.IN on 10/01/20.
//  Copyright © 2020 BOPPO TECHNOLOGIES. All rights reserved.
//

import Foundation
import UIKit

class MyCollectionViewController: UIViewController {
    
    weak var movieCollectionView: UICollectionView!
//    fileprivate var moviesDataSource: MoviesDataSource?
    fileprivate var selectedIndexPath: IndexPath? = nil
        
    var arr: [UIImage] = [#imageLiteral(resourceName: "splash_fish"), #imageLiteral(resourceName: "splash_cook"), #imageLiteral(resourceName: "star"), #imageLiteral(resourceName: "splash_girl_dance"), #imageLiteral(resourceName: "cub_img")]

    let headerLabel: UILabel = {
        let header = UILabel(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 40))
        header.text = "New Movies"
        return header
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(headerLabel)
        setupCollectionView()
    }
    
    func setupCollectionView(){
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        let collectionView = UICollectionView(frame: CGRect(x: 0, y: 140, width: UIScreen.main.bounds.width, height: 350), collectionViewLayout: layout)
        collectionView.register(CollectionCell.self, forCellWithReuseIdentifier: "CollectionCell")
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .white
        view.addSubview(collectionView)
        self.movieCollectionView = collectionView
                movieCollectionView.dataSource = self
                movieCollectionView.delegate = self
    }
    
}

extension MyCollectionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! CollectionCell
        cell.imageView.image = arr[indexPath.row]
        return cell
    }


}

extension MyCollectionViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

    }
}


extension MyCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width/1.5, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
}
