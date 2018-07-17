//
//  FontCollectionViewCell.swift
//  AutoLayout UIStackView in UIScrollView
//
//  Created by Admin on 23/04/1940 Saka.
//  Copyright © 1940 Saka Arjan van der Laan. All rights reserved.
//

import UIKit

class FontCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var MainView: UIView!
    
    @IBOutlet weak var RoundedView: UIView!
    
    @IBOutlet weak var IconFontLbl: UILabel!
    
    @IBOutlet weak var TitleLbl: UILabel!
//    @IBInspectable var cornerRadius: CGFloat = 3
//
//    @IBInspectable var shadowOffsetWidth: Int = 0
//    @IBInspectable var shadowOffsetHeight: Int = 3
//    @IBInspectable var shadowColor: UIColor? = UIColor.white
//    @IBInspectable var shadowOpacity: Float = 0.5
    
    override func awakeFromNib() {
        super.awakeFromNib()
        MainView.layer.cornerRadius = 3
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: 3)
        
       MainView.layer.masksToBounds = false
       // MainView.layer.shadowColor = shadowColor?.cgColor
        MainView.layer.shadowOffset = CGSize(width: 0, height: 3);
        MainView.layer.shadowOpacity = 0.5
        MainView.layer.shadowPath = shadowPath.cgPath
        
//        RoundedView.layer.cornerRadius = RoundedView.layer.frame.width/2
//        
//       
//        RoundedView.layer.borderWidth = 1.0
//        RoundedView.layer.borderColor = UIColor.black.cgColor
//        RoundedView.layer.masksToBounds = true
//        RoundedView.clipsToBounds = true
//       //
//       // RoundedView.backgroundColor = UIColor.clear
//        RoundedView.layer.shadowColor = UIColor.blue.cgColor
        // Initialization code
    }

}
