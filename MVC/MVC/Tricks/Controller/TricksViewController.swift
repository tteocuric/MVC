//
//  TricksViewController.swift
//  MVC
//
//  Created by Sasha on 21.07.2015..
//  Copyright (c) 2015. Bellabeat, Inc. All rights reserved.
//

import UIKit

class TricksViewController: UIViewController, UITableViewDataSource {
    var tricksArray = RailTrick.returnTricks()
   
    
    @IBOutlet weak var railTrickTable: UITableView!
        override func viewDidLoad() {
        super.viewDidLoad()
            
            self.railTrickTable.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tricksArray.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "RailTrickCell")
        var title = self.tricksArray[indexPath.row]
        cell.textLabel?.text = title
        
        return cell
    }
}

