//
//  CollectionViewCell2.swift
//  AutoLayout UIStackView in UIScrollView
//
//  Created by varun daga on 11/07/18.
//  Copyright © 2018 Arjan van der Laan. All rights reserved.
//

import UIKit

class CollectionViewCell2: UICollectionViewCell{
    
    
    @IBOutlet weak var RoundedView: UIView!
    
    
    @IBOutlet weak var IconLabel: UILabel!
    



   override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
     }
    override func layoutSubviews() {
        
        RoundedView.layer.cornerRadius = RoundedView.bounds.width/2
        RoundedView.layer.borderWidth = 1.0
        RoundedView.layer.borderColor = UIColor.black.cgColor
        RoundedView.layer.masksToBounds = true
        RoundedView.clipsToBounds = true
        RoundedView.backgroundColor = UIColor.clear
        RoundedView.layer.shadowColor = UIColor.blue.cgColor
        // cell.RoundedView.layer.shadowOffset = CGSize(width:5, height:15)
        RoundedView.layer.shadowOpacity = 0.5
        RoundedView.layer.shadowRadius = 2.0
    }

}
