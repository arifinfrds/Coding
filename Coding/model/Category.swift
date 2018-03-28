//
//  Category.swift
//  Coding
//
//  Created by Arifin Firdaus on 3/28/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import UIKit

struct Category {
    var image: UIImage
    var title: String
    var itemCount: Int
    
    static func getCategories() -> [Category] {
        return [
            Category(image: #imageLiteral(resourceName: "Community"), title: "Community", itemCount: 14),
            Category(image: #imageLiteral(resourceName: "Community"), title: "Housing", itemCount: 14),
            Category(image: #imageLiteral(resourceName: "Community"), title: "Jobs", itemCount: 14),
            Category(image: #imageLiteral(resourceName: "Community"), title: "Personal", itemCount: 14),
            Category(image: #imageLiteral(resourceName: "Community"), title: "For Sale", itemCount: 14),
            Category(image: #imageLiteral(resourceName: "Community"), title: "Discussion Forum", itemCount: 14),
            Category(image: #imageLiteral(resourceName: "Community"), title: "Community", itemCount: 14),
            Category(image: #imageLiteral(resourceName: "Community"), title: "Housing", itemCount: 14),
            Category(image: #imageLiteral(resourceName: "Community"), title: "Jobs", itemCount: 14),
            Category(image: #imageLiteral(resourceName: "Community"), title: "Personal", itemCount: 14),
            Category(image: #imageLiteral(resourceName: "Community"), title: "For Sale", itemCount: 14),
            Category(image: #imageLiteral(resourceName: "Community"), title: "Discussion Forum", itemCount: 14)
        ]
    }
}
