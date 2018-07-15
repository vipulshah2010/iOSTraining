//
//  CustomPickerViewController.swift
//  FirstiOSApp
//
//  Created by Vipul on 15/07/18.
//  Copyright © 2018 Vipul. All rights reserved.
//

import UIKit

class CustomPickerViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    @IBOutlet weak var customPickerView: UIPickerView!
    
    var countries = [String]()
    var age = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries.append("India")
        countries.append("China")
        countries.append("Japan")
        countries.append("Australia")
        countries.append("United kingdom")
        
        for i in 10...40 {
            age.append(i)
        }
        
        customPickerView.dataSource = self
        customPickerView.delegate = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return component == 0 ? countries.count : age.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return component == 0 ? countries[row] : "\(age[row])"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            let selectedCountry = countries[row]
            print("Selected country is \(selectedCountry)")
        }
        else {
            let selectedAge = age[row]
            print("Selected age is \(selectedAge)")
        }
    }
}








