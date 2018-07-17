//
//  HeaderCollectionReusableView.swift
//  AutoLayout UIStackView in UIScrollView
//
//  Created by Admin on 23/04/1940 Saka.
//  Copyright © 1940 Saka Arjan van der Laan. All rights reserved.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
    
    @IBOutlet weak var MainView: UIView!
    
    @IBOutlet weak var HeaderLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        MainView.layer.cornerRadius = 3
       // let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: 3)
        
        MainView.layer.masksToBounds = false
        // MainView.layer.shadowColor = shadowColor?.cgColor
       MainView.layer.shadowOffset = CGSize(width: 0, height: 1);
        MainView.layer.shadowOpacity = 0.5
       // MainView.layer.shadowPath = shadowPath.cgPath
    }
    
}
