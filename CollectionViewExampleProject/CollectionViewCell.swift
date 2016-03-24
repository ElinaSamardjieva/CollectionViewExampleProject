//
//  CollectionViewCell.swift
//  CollectionViewExampleProject
//
//  Created by Elina Samardjieva on 3/23/16.
//  Copyright © 2016 Elina Samardjieva. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet var oldPriceLabel: UILabel!
    @IBOutlet var currentPrice: UILabel!
    @IBOutlet var currency: UILabel!
    @IBOutlet var dressImageView: ImageView!
    @IBOutlet var likeButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
