//
//  CollectionViewCell4.swift
//  AutoLayout UIStackView in UIScrollView
//
//  Created by varun daga on 12/07/18.
//  Copyright © 2018 Arjan van der Laan. All rights reserved.
//

import UIKit

class CollectionViewCell4: UICollectionViewCell {
      @IBOutlet weak var imageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func layoutSubviews() {
        
        
        imageView.layer.cornerRadius = imageView.bounds.width/2
        imageView.layer.borderWidth = 1.0
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.masksToBounds = true
        imageView.clipsToBounds = true
        imageView.backgroundColor = UIColor.clear
        imageView.layer.shadowColor = UIColor.blue.cgColor
        // cell.RoundedView.layer.shadowOffset = CGSize(width:5, height:15)
        imageView.layer.shadowOpacity = 0.5
        imageView.layer.shadowRadius = 2.0

    }
}
