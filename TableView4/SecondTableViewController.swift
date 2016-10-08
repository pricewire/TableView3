//
//  SecondTableViewController.swift
//  TableView4
//
//  Created by Mark Langlois on 10/7/16.
//  Copyright © 2016 Mark Langlois. All rights reserved.
//

import Foundation
import UIKit

class SecondTableViewController: UITableViewController {
    
    var SecondArray = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SecondArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = self.tableView.dequeueReusableCell(withIdentifier: "SecondCell", for: indexPath) as UITableViewCell
        
        Cell.textLabel?.text = SecondArray[indexPath.row]
        
        return Cell
    }
        
        
}
