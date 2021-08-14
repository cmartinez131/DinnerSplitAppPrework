//
//  ViewController.swift
//  Prework
//
//  Created by Christopher Martinez on 7/23/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var totalTipLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var splitAmountLabel: UILabel!
    @IBOutlet weak var splitAmountTextField: UITextField!
    
    @IBOutlet weak var rating: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calulateTip(_ sender: Any) {
        //get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //get total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //split option
        let waysSplited = Double(splitAmountTextField.text!) ?? 0
        let splitAmount = bill / waysSplited
        
        //update tip amount
        totalTipLabel.text = String(format: "$%.2f", tip)
        //update total amount
        totalLabel.text = String(format: "$%.2f", total)
        splitAmountLabel.text = String(format: "$%.2f", splitAmount)
    }
    
}

