//
//  PickerDemoController.swift
//  FirstiOSApp
//
//  Created by Vipul on 14/07/18.
//  Copyright © 2018 Vipul. All rights reserved.
//

import UIKit

class PickerDemoController: UIViewController {

    @IBOutlet weak var datePickerView: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePickerView.datePickerMode = .time
        // Do any additional setup after loading the view.
    }

    @IBAction func showSelectedDate(_ sender: UIButton) {
        let selectedDate = datePickerView.date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MMM/yyyy hh:mm:ss a"
        let formattedDate = dateFormatter.string(from: selectedDate)
        print("Selected Date is \(formattedDate)")
    }
}
