//
//  CollectionWithHeaderViewController.swift
//  AutoLayout UIStackView in UIScrollView
//
//  Created by Admin on 23/04/1940 Saka.
//  Copyright © 1940 Saka Arjan van der Laan. All rights reserved.
//

import UIKit

class CollectionWithHeaderViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet weak var CollectionView: UICollectionView!
       var iconList = ["\u{e677}","\u{e64f}","\u{e62e}","\u{e604}","\u{e649}","\u{e664}","\u{e652}","\u{e628}","\u{e627}","\u{e69d}","\u{e693}","\u{e6a9}","\u{e611}","\u{e616}","\u{e693}","\u{e621}","\u{e693}","\u{e621}"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CollectionView.layer.cornerRadius = 3
        // let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: 3)
        
        CollectionView.layer.masksToBounds = false
        // MainView.layer.shadowColor = shadowColor?.cgColor
        CollectionView.layer.shadowOffset = CGSize(width: 0, height: 1);
        CollectionView.layer.shadowOpacity = 0.5
        
         CollectionView.register(UINib(nibName: "FontCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FontCollectionViewCell")
 
        let nib1:UINib = UINib(nibName: "HeaderCollectionReusableView", bundle: nil)
        
        self.CollectionView.register(nib1, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "HeaderCollectionReusableView")
        
        //let layout = self.CollectionView.collectionViewLayout as! UICollectionViewFlowLayout
       // layout.headerReferenceSize = CGSize(width: 50, height: 60)

        CollectionView.delegate = self;
        CollectionView.dataSource = self

        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell: FontCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "FontCollectionViewCell", for: indexPath) as? FontCollectionViewCell
        {
            let randomNumber = Int(arc4random_uniform(UInt32(self.iconList.count)))
            //cell.backgroundColor = .clear
            

            cell.IconFontLbl.text = self.iconList[randomNumber]
            return cell
        }
        return UICollectionViewCell()
        
        
        
        
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
//        let size = CGSize(width: 120, height: 120)
//        return size
//    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let yourWidth = collectionView.bounds.width/3
        let yourHeight = yourWidth
        
        return CGSize(width: yourWidth, height: yourHeight)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: 100, height: 70)
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header:HeaderCollectionReusableView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "HeaderCollectionReusableView", for: indexPath) as! HeaderCollectionReusableView
        header.HeaderLabel.text = "Header View"
        
        return header
    }


}
