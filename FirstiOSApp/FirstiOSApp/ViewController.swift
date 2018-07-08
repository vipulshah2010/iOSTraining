//
//  ViewController.swift
//  FirstiOSApp
//
//  Created by Vipul on 07/07/18.
//  Copyright © 2018 Vipul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var number1TextField: UITextField!
    @IBOutlet weak var number2TextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet var containerView: UIView!
    
    @IBAction func addNumbers(_ sender: UIButton) {
        
        if let number1 = number1TextField.text,let number2 = number2TextField.text {
            let num1 = Int(number1)!
            let num2 = Int(number2)!
            
            let answer = num1 + num2
            
            answerLabel.text = "Answer is \(answer)"
            
            if answer > 50 {
                containerView.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
            }
            else {
                containerView.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
            }
        }
        
        print([10,20,30,40,50,60,80].filter { number -> Bool in
            return number % 4 == 0
        })
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        number1TextField.text = ""
        number2TextField.text = ""
        number1TextField.becomeFirstResponder()
        
        print(filterValues(values:[1,2,3,4,5,6],criteria:isOdd))
        
        print(filterValues(values: [10,20,30], criteria: { num1 -> Bool in
            return  num1 % 2 > 10
        }))
    }
    
    var isEven:(Int) -> Bool = { num1 in
        return num1 % 2 == 0
    }
    
    var isOdd:(Int) -> Bool = { num1 in
        return num1 % 2 != 0
    }
    
    func filterValues(values:[Int],criteria:(Int) -> Bool) -> [Int] {
        var nums = [Int ]()
        for i in values {
            if criteria(i) == true {
                nums.append(i)
            }
        }
        
        return nums
    }
}

