//
//  TrickViewController.swift
//  MVC
//
//  Created by Teo on 21/07/15.
//  Copyright (c) 2015 Bellabeat, Inc. All rights reserved.
//

import UIKit

class TrickViewController: UIViewController {
    
    var trick: SkateTrick?

    @IBOutlet weak var trickNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        trickNameLabel.text = trick!.randomTrick()
    }

}
