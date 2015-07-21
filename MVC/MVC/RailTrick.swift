//
//  RailTrick.swift
//  MVC
//
//  Created by Teo on 21/07/15.
//  Copyright (c) 2015 Bellabeat, Inc. All rights reserved.
//

import Foundation

class RailTrick {
    static func returnTricks() -> Array<String> {
        
        // Kreiras RailTricks:Array var i incijaliziras ga
        // imena varijabla se po konvenciji pisu malim slovom
    var RailTricks = ["50-50",
                        "5-0",
                        "Nosegrind",
                        "Smith grind",
                        "Feeble" ]
        // Kreiras tableRailTricks:Array var i incijaliziras ga
        var tableRailTricks = [String]()
        
        // prolazis kroz svaki objekt u RailTricks Arrayu
        // i stavljas ih u tableRailTricks Array
        // zasto??
        // mogao si jednostavno napraviti
        // return RailTricks
        for trick in RailTricks{
            tableRailTricks.append(trick)
        }
    return tableRailTricks
    }
}