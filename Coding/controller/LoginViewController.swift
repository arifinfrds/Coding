//
//  LoginViewController.swift
//  Coding
//
//  Created by Arifin Firdaus on 3/28/18.
//  Copyright © 2018 Arifin Firdaus. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var createAccountButton: UIButton!
    @IBOutlet weak var faqButton: UIButton!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var usernameTextField: RoundedTextField!
    @IBOutlet weak var passwordTextField: RoundedTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        
    }
    
    private func setupViews() {
        titleLabel.font = UIFont.boldSystemFont(ofSize: 28.0)
        titleLabel.textColor = Resources.Color.appGreenColor
        
        forgotPasswordButton.tintColor = Resources.Color.appGreenColor
        createAccountButton.tintColor = Resources.Color.appGreenColor
        faqButton.tintColor = .black
        
        passwordTextField.isSecureTextEntry = true
    }


}
