//
//  ViewController.swift
//  tippy
//
//  Created by Truc Tran on 1/9/19.
//  Copyright © 2019 Truc Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender: Any) {
        //Dismiss the key board when tapping on the control view ( mute textfield)
        view.endEditing(true)
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Declare an array for tip Percentage
        let tipPercentages = [0.18, 0.2, 0.25]
        
        // Cast billField text to double, "!" syntax for Swift, incase a letter => nill value will become 0
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f",  total)
    }
   
    
    
}

