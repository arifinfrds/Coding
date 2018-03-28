//
//  Item.swift
//  Coding
//
//  Created by Arifin Firdaus on 3/28/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import UIKit

struct Item {
    var image: UIImage
    var title: String
    var time: Int
    
    static func getItems() -> [Item] {
        return [
            Item(image: #imageLiteral(resourceName: "imgsample"), title: "Snowbirds-Mature, Reliable, guy can drive your car To or from...", time: 2),
            Item(image: #imageLiteral(resourceName: "imgsample"), title: "Yorkie Poodle Puppies", time: 5),
            Item(image: #imageLiteral(resourceName: "imgsample"), title: "AKC Golden Retriever litter of 5 males and a female pups", time: 15),
            Item(image: #imageLiteral(resourceName: "imgsample"), title: "Sweethearts Child Care/Full time special for 2+yr. old...", time: 17)
        ]
    }
}
