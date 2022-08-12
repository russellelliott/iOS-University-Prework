//
//  ViewController.swift
//  Prework
//
//  Created by Russell Elliott on 8/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    //Bill Amount text field
    @IBOutlet weak var billAmountTextField: UITextField!
    
    //Tip Amount label
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    //segmented control to control tip amount
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    //Total Bill amount
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Function to calculate total tip
    @IBAction func calculateTip(_ sender: Any) {
        //Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        //Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    

}

