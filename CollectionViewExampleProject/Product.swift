//
//  Product.swift
//  CollectionViewExampleProject
//
//  Created by Elina Samardjieva on 3/23/16.
//  Copyright © 2016 Elina Samardjieva. All rights reserved.
//

import UIKit

class Product: NSObject {

    var oldPrice = ""
    var currentPrice = ""
    var currency = ""
    var isLiked = false
    var imageURL = ""
    
    init(oldPrice: String, currentPrice: String, currency: String, isLiked: Bool, imageURL: String) {
        self.oldPrice = oldPrice
        self.currentPrice = currentPrice
        self.currency = currency
        self.isLiked = isLiked
        self.imageURL = imageURL
    }
}
