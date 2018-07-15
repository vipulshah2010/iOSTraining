//
//  CommonControlsViewController.swift
//  FirstiOSApp
//
//  Created by Vipul on 15/07/18.
//  Copyright © 2018 Vipul. All rights reserved.
//

import UIKit

class CommonControlsViewController: UIViewController {
    
    @IBOutlet weak var sliderValue: UILabel!
    
    @IBOutlet weak var stepperValue: UILabel!
    
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        stepperValue.text = "Stepper value is \(Int(sender.value))"
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        sliderValue.text = "\(Int(sender.value))"
        let progressValue = sender.value / 30
        progressView.progress = progressValue
    }
    
    @IBAction func dishTypeSegmentedControl(_ sender: UISegmentedControl) {
        print("Selected segment index is \(sender.selectedSegmentIndex)")
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        print("Switch is turned \(sender.isOn ? "On":"Off")")
    }
    
    
}
