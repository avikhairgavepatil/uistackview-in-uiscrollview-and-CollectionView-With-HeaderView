//
//  TestingViewController.swift
//  AutoLayout UIStackView in UIScrollView
//
//  Created by varun daga on 10/07/18.
//  Copyright © 2018 Arjan van der Laan. All rights reserved.
//

import UIKit

class TestingViewController: UIViewController,UIScrollViewDelegate{

    @IBOutlet weak var ScrollView1: UIScrollView!
    
    
    @IBOutlet weak var ScrollView2: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ScrollView1.delegate = self;
        ScrollView2.delegate = self
        
        
    }

   
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        
        if(scrollView == ScrollView1)
        {
            
            
            ScrollView2.contentOffset.x = scrollView.contentOffset.x
           // ScrollView3.contentOffset.x = scrollView.contentOffset.x
           // ScrollView4.contentOffset.x = scrollView.contentOffset.x
            
        }
        
//        if(scrollView == ScrollView2)
//        {
//            
//            
//            ScrollView1.contentOffset.x = scrollView.contentOffset.x
//            ScrollView3.contentOffset.x = 0
//            ScrollView4.contentOffset.x = 0
//            // ScrollView3.contentOffset.y = 0
//            // ScrollView4.contentOffset.y = 0
//        }
        
    }
    
    
    
    
    
    
}
