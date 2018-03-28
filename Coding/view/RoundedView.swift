//
//  RoundedView.swift
//  Coding
//
//  Created by Arifin Firdaus on 3/28/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedView: UIView {
    
    @IBInspectable var borderColor: UIColor = UIColor.white {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 2.0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }

    
    @IBInspectable var useShadow: Bool = true {
        didSet {
            self.layer.masksToBounds = false
            self.layer.shadowColor = UIColor.lightGray.cgColor
            self.layer.shadowRadius = 10.0
            self.layer.shadowOffset = CGSize(width: 3.0, height: 3.0)
            self.layer.shadowOpacity = 0.5
        }
    }
}
