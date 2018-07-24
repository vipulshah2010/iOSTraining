//
//  RegisterViewController.swift
//  Class_4
//
//  Created by Vipul on 22/07/18.
//  Copyright © 2018 Vipul. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var rUsername:String?
    var rPassword:String?
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let username = rUsername {
            usernameLabel.text = username
        }
        
        if let password = rPassword {
            passwordLabel.text = password
        }
    }
}
