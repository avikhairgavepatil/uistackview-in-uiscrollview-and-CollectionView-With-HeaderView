//
//  TableViewCell3.swift
//  AutoLayout UIStackView in UIScrollView
//
//  Created by varun daga on 12/07/18.
//  Copyright © 2018 Arjan van der Laan. All rights reserved.
//

import UIKit

class TableViewCell3: UITableViewCell , UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var imageArray = [String] ()
    override func awakeFromNib() {
        super.awakeFromNib()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
        imageArray = ["1.jpeg","2.jpeg","3.jpeg","4.jpeg","5.jpeg","6.jpeg","7.jpeg","8.jpeg","9.jpeg","10.jpeg","1.jpeg"]
        collectionView.register(UINib(nibName: "CollectionViewCell4", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell4")
        // Initialization code
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell: CollectionViewCell4 = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell4", for: indexPath) as? CollectionViewCell4
            {
                let randomNumber = Int(arc4random_uniform(UInt32(imageArray.count)))
                cell.imageView.image = UIImage(named: imageArray[randomNumber])
                
                return cell
            }
            return UICollectionViewCell()
            
        

        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        let size = CGSize(width: 120, height: 120)
        return size
    }
}
