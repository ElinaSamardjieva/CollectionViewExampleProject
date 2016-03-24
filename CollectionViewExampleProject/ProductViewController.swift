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

        collectionView.registerNib(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Cell")
    }

    // MARK: - Space between cells
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 0
    }
    
    // MARK: - Space between corners
    
        func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
            return UIEdgeInsetsMake(0, 15, 0, 15)
        }
    
    // MARK: - UICollectionViewDataSource

    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataManager.sharedManager.dataArray.count
    }

    func collectionView(var collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! CollectionViewCell
        
        cell.contentView.backgroundColor = UIColor.whiteColor()

        if indexPath.row < DataManager.sharedManager.dataArray.count {
            let product = DataManager.sharedManager.dataArray[indexPath.row]
            

            
            cell.oldPriceLabel.text = product.oldPrice
            cell.currentPrice.text = product.currentPrice
          //  cell.currency.text = product.currency
            
            cell.dressImageView.loadImage(product.imageURL)
            
//            let url = NSURL(string: product.imageURL)
//            
//            if let url = url {
//                let data = NSData(contentsOfURL: url)
//                
//                print(data)
//                
//                if let data = data {
//                    cell.dressImageView.image = UIImage(data: data)
//                }
//            }
//            

            
    
//            
//            cell.dressImageView.image = UIImage(data: NSData(contentsOfURL: NSURL(string: "http://resources.wepushbuttons.com.au/wp-content/uploads/sites/2/2012/03/twitter-logo-small.jpg")!)!)
//            
            
        }

        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize
    {
        var screenRect = UIScreen.mainScreen().bounds
        var screenWidth = screenRect.size.width
        var cellWidth = screenWidth / 2.2
        var cellHeight = screenWidth / 1.5
        var size = CGSizeMake(cellWidth, cellHeight)
        
        return size;
    }
    
    

}
