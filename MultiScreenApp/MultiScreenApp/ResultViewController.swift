//
//  ResultViewController.swift
//  MultiScreenApp
//
//  Created by Vipul on 15/07/18.
//  Copyright © 2018 Vipul. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    var loginName:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let loginName = loginName {
            resultLabel.text = "Your login name is \(loginName)"
        }
    }
}
