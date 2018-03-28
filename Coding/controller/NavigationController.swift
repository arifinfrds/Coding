//
//  NavigationController.swift
//  Coding
//
//  Created by Arifin Firdaus on 3/28/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
    }
    
    private func setupNavBar() {
        self.navigationBar.isTranslucent = false
        self.navigationBar.tintColor = Resources.Color.appGreenColor
        navigationBar.shadowImage = UIImage()
        
        
        if #available(iOS 11.0, *) {
            self.navigationBar.prefersLargeTitles = true
            self.navigationItem.largeTitleDisplayMode = .always
            self.navigationBar.largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor: Resources.Color.appGreenColor]
            
        }
    }
    
    
    
}
