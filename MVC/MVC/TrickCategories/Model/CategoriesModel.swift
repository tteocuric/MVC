//
//  CategoriesModel.swift
//  MVC
//
//  Created by Sasha on 21.07.2015..
//  Copyright (c) 2015. Bellabeat, Inc. All rights reserved.
//

import Foundation

class CategoriesModel {
    static func allCategories() -> Array<String> {
        var categoriesArray = ["Flatground", "Grind", "Manual", "Gaps"]
        return categoriesArray
    }
}