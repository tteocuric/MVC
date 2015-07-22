//
//  CategoryMenuItem.swift
//  MVC
//
//  Created by Teo on 21/07/15.
//  Copyright (c) 2015 Bellabeat, Inc. All rights reserved.
//

import Foundation


class CategoryMenuItem  {
    var categoryTitle:String?
    var skateTrick:SkateTrick?
    
    init (categoryTitle: String, skateTrick: SkateTrick) {
        self.categoryTitle = categoryTitle
        self.skateTrick = skateTrick
    }
    
    static func getAllCategoryMenuItems() ->  Array<CategoryMenuItem> {
        var menuItems = [
            CategoryMenuItem(categoryTitle: "FlatGround1", skateTrick: SkateTrick(easy: true)),
            CategoryMenuItem(categoryTitle: "FlatGround2", skateTrick: SkateTrick(easy: false)),
            CategoryMenuItem(categoryTitle: "FlatGround3", skateTrick: SkateTrick(easy: true)),
            CategoryMenuItem(categoryTitle: "Manual", skateTrick: ManualSkateTrick(easy: true)),
            CategoryMenuItem(categoryTitle: "Grind", skateTrick: RailSkateTrick(easy: true))
        ]
        return menuItems
    }
}