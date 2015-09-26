//
//  ViewController.swift
//  Tipster
//
//  Created by Fernanda Cardozo on 9/26/15.
//  Copyright © 2015 Fernanda Cardozo. All rights reserved.
//

// notes don't affect coding, they are just coments about what is happening on each part.



import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billAmountField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    // connection is made by holding comand key and drag
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipAmountLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
        // don't add spaces between the dots above, they are connecting the functions.
        // everything inside quotes is simply a text and not a code. is the actual content of the box.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChange(sender: AnyObject) {
        //var billAmount = billAmountField.text
        //var tipAmount = NSString (string: billAmount!).doubleValue * 0.2
        
        let tipPercentages = [0.18, 0.20, 0.23]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        let billAmount = NSString (string: billAmountField.text!).doubleValue
        let tipAmount = billAmount * tipPercentage
        let total = billAmount + tipAmount
        
        
        
        tipAmountLabel.text = "$\(tipAmount)"
        totalLabel.text = "$\(total)"
        
        print(tipControl.selectedSegmentIndex)

        
        //you can ignore yellow triangles, but red circles mean something needs to be fixed
    }

}

