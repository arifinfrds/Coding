//
//  CategoryCell.swift
//  Coding
//
//  Created by Arifin Firdaus on 3/28/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet weak var roundedView: RoundedView!
    
    var dataSource: Category? {
        didSet {
            updateUI()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        itemLabel.textColor = .lightGray
    }
    
    private func updateUI() {
        guard let dataSource = dataSource else { return }
        textLabel.text = dataSource.title
        itemLabel.text = "\(dataSource.itemCount) items"
    }

}
