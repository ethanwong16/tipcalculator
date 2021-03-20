//
//  ViewController.swift
//  Prework_Calculator
//
//  Created by Ethan Wong on 3/8/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // change to decimal key pad
        billAmountTextField.keyboardType = UIKeyboardType.decimalPad
        billAmountTextField.becomeFirstResponder()
    }


    @IBAction func calculateTip(_ sender: Any) {
        // retrieve bill value from billAmountTextField
            // ! is for optional value unwrapping
            // ?? is nil-coalescing, set default value if nil to 0
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // apply tip percentage to get total
            // Double type is implicit
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // update UI labels
        tipAmountLabel.text = String(format : "$%.2f", tip)
        totalLabel.text = String(format : "$%.2f", total)
    }
}

