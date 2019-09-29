//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Nabila Ahmed on 9/4/18.
//  Copyright © 2018 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billFilled: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }


    @IBAction func calculateTip(_ sender: AnyObject) {
        // the word let is like final in java. tou won't change it later on.
        let tipPercentages = [0.15,0.20,0.25]
        let bill = Double(billFilled.text!) ?? 0 // if inside the () is false then return zero
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // "$\(tip)" This is a special syntax which means that anything inside the () change it to what the value is.
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

