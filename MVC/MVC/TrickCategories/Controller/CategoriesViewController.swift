//
//  CategoriesViewController.swift
//  MVC
//
//  Created by Sasha on 21.07.2015..
//  Copyright (c) 2015. Bellabeat, Inc. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController, UITableViewDataSource {
    var categoriesArray = CategoriesModel.allCategories()
    
    @IBOutlet weak var categoriesTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.categoriesTable.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // UITableViewDataSource Protocol Implementation
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.categoriesArray.count
    }
    

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "CategoriesCell")
        var title = self.categoriesArray[indexPath.row]
        cell.textLabel?.text = title
        
        return cell
    }
    


}
