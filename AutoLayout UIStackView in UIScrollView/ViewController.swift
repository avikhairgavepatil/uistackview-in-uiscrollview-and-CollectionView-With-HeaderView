//
//  ViewController.swift
//  AutoLayout UIStackView in UIScrollView
//
//  Created by Arjan van der Laan on 01/02/16.
//  Copyright © 2016 Arjan van der Laan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {
    
    
    @IBOutlet weak var ScrollView3: UIScrollView!
    
    
    @IBOutlet weak var ScrollView4: UIScrollView!
    
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
            ScrollView3.contentOffset.x = scrollView.contentOffset.x
            ScrollView4.contentOffset.x = scrollView.contentOffset.x
            
        }
        
        if(scrollView == ScrollView2)
        {
            
            
            ScrollView1.contentOffset.x = scrollView.contentOffset.x
            ScrollView3.contentOffset.x = 0
            ScrollView4.contentOffset.x = 0
             // ScrollView3.contentOffset.y = 0
            // ScrollView4.contentOffset.y = 0
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

