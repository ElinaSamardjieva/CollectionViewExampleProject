//
//  ProductViewController.swift
//  CollectionViewExampleProject
//
//  Created by Elina Samardjieva on 3/23/16.
//  Copyright © 2016 Elina Samardjieva. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController, UICollectionViewDataSource, UITableViewDelegate, UICollectionViewDelegateFlowLayout {

    @IBOutlet var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(DataManager.sharedManager.dataArray.count)

        collectionView.registerNib(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Cell")
        
        var screenSize = UIScreen.mainScreen().bounds
        var screenWidth = screenSize.width
        var screenHeight = screenSize.height
        
//        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
//        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 0)
//        layout.itemSize = CGSize(width: screenWidth/6, height: screenWidth/4)
//        layout.minimumInteritemSpacing = 0
//        layout.minimumLineSpacing = 0
    }

    // MARK: - UICollectionViewDataSource

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataManager.sharedManager.dataArray.count
    }

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {

        self.collectionView.backgroundColor = UIColor.grayColor()
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! CollectionViewCell
        
        cell.contentView.backgroundColor = UIColor.whiteColor()

        if indexPath.row < DataManager.sharedManager.dataArray.count {
            let product = DataManager.sharedManager.dataArray[indexPath.row]

            cell.oldPriceLabel.text = product.oldPrice
        }

        return cell
    }
    
//    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize
//    {
//        var collectionViewSize = collectionView.frame.size
//        collectionViewSize.width = collectionViewSize.width/4.0
//        collectionViewSize.height = collectionViewSize.height/6.0
//        
//        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
//        layout.sectionInset = UIEdgeInsets(top: 0, left: 5, bottom: 10, right: 0)
//        
//        return collectionViewSize
    
        
//        var screenSize = UIScreen.mainScreen().bounds
//        var screenWidth = screenSize.width
//        var screenHeight = screenSize.height
//        
//        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
//        layout.sectionInset = UIEdgeInsets(top: 20, left: 0, bottom: 10, right: 0)
//        layout.itemSize = CGSize(width: screenWidth/3, height: screenWidth/3)
//        layout.minimumInteritemSpacing = 0
//        layout.minimumLineSpacing = 0
        
        //return layout
        
//        var screenRect = UIScreen.mainScreen().bounds
//        var screenWidth = screenRect.size.width
//        var cellWidth = screenWidth / 3.0
//        var size = CGSizeMake(cellWidth, cellWidth)
//        
//        return size;
//    }

}
