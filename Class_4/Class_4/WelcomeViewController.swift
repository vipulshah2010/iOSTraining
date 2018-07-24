//
//  WelcomeViewController.swift
//  Class_4
//
//  Created by Vipul on 22/07/18.
//  Copyright © 2018 Vipul. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var wUsername:String?
    var wPassword:String?
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let username = wUsername {
            usernameLabel.text = username
        }
        
        if let password = wPassword {
            passwordLabel.text = password
        }
    }
}
