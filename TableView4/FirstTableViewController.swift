//
//  ViewController.swift
//  TableView4
//
//  Created by Mark Langlois on 10/7/16.
//  Copyright © 2016 Mark Langlois. All rights reserved.
//

import UIKit

class FirstTableViewController: UITableViewController {
    
    var FirstTableArray = [String]()
    
    var SecondArray = [SecondTable]()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        FirstTableArray = ["Water Sports","Team Sports","Winter Sports"]
        
        SecondArray = [SecondTable(secondTitle: ["Surfing","Swimming","Sailing"]),
            SecondTable(secondTitle: ["Baseball","Basketball","Football"]),
            SecondTable(secondTitle: ["Alpine skiing","Snowboarding","Skating"])]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FirstTableArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = self.tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
        
        Cell.textLabel?.text = FirstTableArray[indexPath.row]
        
        return Cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow! as NSIndexPath
        
        
        
        let DestViewController = segue.destination as! SecondTableViewController
        
        
        
        var SecondTableArrayTwo : SecondTable
        
        SecondTableArrayTwo = SecondArray[indexPath.row]
        
        DestViewController.SecondArray = SecondTableArrayTwo.secondTitle
    }


}
