//
//  LoginViewController.swift
//  MultiScreenApp
//
//  Created by Vipul on 15/07/18.
//  Copyright © 2018 Vipul. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func performLogin(_ sender: UIButton) {
        let username = loginTextField.text!
        let resultViewController = storyboard?.instantiateViewController(withIdentifier: "result_view_controller") as! ResultViewController
        
        resultViewController.loginName = username
        
        present(resultViewController, animated: true, completion: nil)
    }
    
}




