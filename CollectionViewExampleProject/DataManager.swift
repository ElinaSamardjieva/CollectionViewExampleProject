//
//  DataManager.swift
//  CollectionViewExampleProject
//
//  Created by Elina Samardjieva on 3/23/16.
//  Copyright © 2016 Elina Samardjieva. All rights reserved.
//

import UIKit

private let _sharedInstance = DataManager()

class DataManager: NSObject {
    
     var dataArray =
    [Product(
        oldPrice: "5",
        currentPrice: "10",
        currency: "Euro",
        isLiked: true,
        imageURL: "http://resources.wepushbuttons.com.au/wp-content/uploads/sites/2/2012/03/twitter-logo-small.jpg"),
        
        Product(
            oldPrice: "4",
            currentPrice: "10",
            currency: "Euro",
            isLiked: true,
            imageURL: "http://resources.wepushbuttons.com.au/wp-content/uploads/sites/2/2012/03/twitter-logo-small.jpg"),
        
        Product(
            oldPrice: "4",
            currentPrice: "10",
            currency: "Euro",
            isLiked: true,
            imageURL: "http://resources.wepushbuttons.com.au/wp-content/uploads/sites/2/2012/03/twitter-logo-small.jpg"),
        
        Product(
            oldPrice: "4",
            currentPrice: "10",
            currency: "Euro",
            isLiked: true,
            imageURL: "http://resources.wepushbuttons.com.au/wp-content/uploads/sites/2/2012/03/twitter-logo-small.jpg"),
        
        Product(
            oldPrice: "4",
            currentPrice: "10",
            currency: "Euro",
            isLiked: true,
            imageURL: "http://resources.wepushbuttons.com.au/wp-content/uploads/sites/2/2012/03/twitter-logo-small.jpg")]
    
    
//    var dataArray = [Product(oldPrice: "5"), Product(oldPrice: "50"), Product(oldPrice: "50"), Product(oldPrice: "50"), Product(oldPrice: "100"), Product(oldPrice: "50"), Product(oldPrice: "50")]
    
    
    class var sharedManager: DataManager {
        return _sharedInstance
    }
}