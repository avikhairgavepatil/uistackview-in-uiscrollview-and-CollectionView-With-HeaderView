//
//  TableViewCell2.swift
//  AutoLayout UIStackView in UIScrollView
//
//  Created by varun daga on 11/07/18.
//  Copyright © 2018 Arjan van der Laan. All rights reserved.
//

import UIKit

class TableViewCell2: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var iconList = ["\u{e677}","\u{e64f}","\u{e62e}","\u{e604}","\u{e649}","\u{e664}","\u{e652}","\u{e628}","\u{e627}","\u{e69d}","\u{e693}","\u{e6a9}","\u{e611}","\u{e616}","\u{e693}","\u{e621}"]
    @IBOutlet weak var collectionView: UICollectionView!
    //var imageArray = [String] ()
    override func awakeFromNib() {
        super.awakeFromNib()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self

        collectionView.register(UINib(nibName: "CollectionViewCell2", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell2")
        // Initialization code
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell: CollectionViewCell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell2", for: indexPath) as? CollectionViewCell2
        {
            let randomNumber = Int(arc4random_uniform(UInt32(self.iconList.count)))
            cell.backgroundColor = .clear
            
//            cell.RoundedView.layer.cornerRadius = cell.RoundedView.bounds.width/2
//            cell.RoundedView.layer.borderWidth = 1.0
//            cell.RoundedView.layer.borderColor = UIColor.black.cgColor
//            cell.RoundedView.layer.masksToBounds = true
//            cell.RoundedView.clipsToBounds = true
//            cell.RoundedView.backgroundColor = UIColor.clear
//            cell.RoundedView.layer.shadowColor = UIColor.black.cgColor
//            // cell.RoundedView.layer.shadowOffset = CGSize(width:5, height:15)
//            cell.RoundedView.layer.shadowOpacity = 0.5
//            cell.RoundedView.layer.shadowRadius = 2.0
            cell.IconLabel.text = self.iconList[randomNumber]
            return cell
        }
        return UICollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        let size = CGSize(width: 100, height: 100)
        return size
    }
}
