//
//  ViewController.swift
//  Class_4
//
//  Created by Vipul on 22/07/18.
//  Copyright © 2018 Vipul. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //   textField.resignFirstResponder()
        if usernameTextField.isFirstResponder {
            passwordTextField.becomeFirstResponder()
        }
        else {
          textField.resignFirstResponder()
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let username = usernameTextField.text else {return}
        guard let password = passwordTextField.text else {return}
        
        if let wc = segue.destination as? WelcomeViewController {
            wc.wUsername = username
            wc.wPassword = password
            return
        }
        
        if let rv = segue.destination as? RegisterViewController {
            rv.rUsername = username
            rv.rPassword = password
            return
        }
    }
}

