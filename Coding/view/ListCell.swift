//
//  ListCell.swift
//  Coding
//
//  Created by Arifin Firdaus on 3/28/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import UIKit

class ListCell: UITableViewCell {

    @IBOutlet weak var contentImageView: UIImageView!
    @IBOutlet weak var txtLabel: UILabel!
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var starImageView: UIImageView!
    @IBOutlet weak var favoritImageView: UIImageView!
    @IBOutlet weak var redoImageView: UIImageView!
    
    var dataSource: Item? {
        didSet {
            updateUI()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        hourLabel.textColor = .lightGray
        txtLabel.font = UIFont.boldSystemFont(ofSize: 17.0)
        
        starImageView.image = #imageLiteral(resourceName: "ic_star_rate_18pt").maskWithColor(color: .orange)
        favoritImageView.image = #imageLiteral(resourceName: "ic_favorite_18pt").maskWithColor(color: .red)
        redoImageView.image = #imageLiteral(resourceName: "ic_redo_18pt").maskWithColor(color: .lightGray)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    private func updateUI() {
        guard let dataSource = dataSource else { return }
        contentImageView.image = dataSource.image
        txtLabel.text = dataSource.title
        hourLabel.text = "\(dataSource.time) hours ago"
    }
    
}
