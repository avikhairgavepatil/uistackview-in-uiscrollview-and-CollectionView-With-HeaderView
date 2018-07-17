//
//  TableViewController.swift
//  AutoLayout UIStackView in UIScrollView
//
//  Created by varun daga on 11/07/18.
//  Copyright © 2018 Arjan van der Laan. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        tableView.register(UINib(nibName: "TableViewCell1", bundle: nil), forCellReuseIdentifier: "TableViewCell1")
        
         tableView.register(UINib(nibName: "TableViewCell2", bundle: nil), forCellReuseIdentifier: "TableViewCell2")
        
        tableView.register(UINib(nibName: "TableViewCell3", bundle: nil), forCellReuseIdentifier: "TableViewCell3")
        
        tableView.delegate = self
        tableView.dataSource = self;
        tableView.estimatedRowHeight = 120
        self.tableView.sectionHeaderHeight = 70
        let nibName = UINib(nibName: "TableHeaderView", bundle: nil)
        self.tableView.register(nibName, forHeaderFooterViewReuseIdentifier: "TableHeaderView")
        
        
        
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "TableHeaderView") as! TableHeaderView
        
        headerView.Title.text = "Grocery"
        
        return headerView
        
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(indexPath.section == 0)
        {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell1", for: indexPath) as! TableViewCell1
            
            return cell
           
            
            
            
        }
        
        if(indexPath.section == 1)
        {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell2", for: indexPath) as! TableViewCell2
            return cell
            
            
            
        }
        if(indexPath.section == 2)
        {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell3", for: indexPath) as! TableViewCell3
            return cell
            
            
            
        }
        if(indexPath.section == 3)
        {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell2", for: indexPath) as! TableViewCell2
            return cell
            
            
            
        }
        else{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell1", for: indexPath) as! TableViewCell1
            return cell
            
            
        }
        
        

        
       
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 120
    }
//




}
