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
    var RailTricks = ["50-50",
                        "5-0",
                        "Nosegrind",
                        "Smith grind",
                        "Feeble" ]
        var tableRailTricks = [String]()
        for trick in RailTricks{
            tableRailTricks.append(trick)
        }
    return tableRailTricks
    }
}