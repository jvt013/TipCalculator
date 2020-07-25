//
//  ViewController.swift
//  TipCalculator
//
//  Created by Jennifer Trinh on 7/5/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    
   
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        billAmountTextField.delegate = self
        view.becomeFirstResponder()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            print("view will appear")
            // This is a good place to retrieve the default tip percentage from UserDefaults
            // and use it to update the tip amount
        let defaultTip = UserDefaults.standard
            
           let selectedIndex =  defaultTip.value(forKey: "defaultTip")
        
       
      
           
        tipControl.selectedSegmentIndex = selectedIndex as! Int? ?? 0 
        
        
           
           
        }

        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            print("view did appear")
        }

        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            print("view will disappear")
        }

        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidAppear(animated)
            print("view did disappear")
        }
    
    
   
    
    let defaults = UserDefaults.standard
    @IBOutlet weak var moneySign: UILabel!
    @IBOutlet weak var swipeUp: UILabel!
    @IBOutlet weak var welcomeText: UILabel!
    @IBOutlet weak var welcomeScreen: UIView!
    @IBOutlet weak var tipView: UIView!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercentageField: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!

    @IBOutlet weak var twoPeople: UILabel!
    @IBOutlet weak var threePeople: UILabel!
    
    
    @IBAction func removeWelcome(_ sender: Any) {
        // Optionally initialize the property to a desired starting value
        UIView.animate(withDuration: 0.4, animations: {
        self.welcomeScreen.transform = CGAffineTransform(translationX: 0, y: -1000)
        })
        
//        UIView.animate(withDuration: 0.5, animations: {
//            self.billAmountTextField.transform = CGAffineTransform(translationX: 0, y: 250)
//            self.moneySign.transform = CGAffineTransform(translationX: 0, y: 250)
//            self.tipControl.transform = CGAffineTransform(translationX: 0, y: 200)
//
//        })
    }
    
    
    
    @IBAction func onTap(_ sender: Any) {
        print("away")
        UIView.animate(withDuration: 0.7, animations: {
            self.tipView.transform = CGAffineTransform(translationX: 0, y: 300)
            self.moneySign.transform = CGAffineTransform(translationX: 0, y: 50)
            self.billAmountTextField.transform = CGAffineTransform(translationX: 0, y: 50)
            self.tipControl.transform = CGAffineTransform(translationX: 0, y: 50)
            }, completion: nil)
                
                
        
    }

    
    @IBAction func removeKey(_ sender: Any) {
        billAmountTextField.resignFirstResponder()
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //get initial bill amount and calculate tip
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.20]
        //calculate tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //update tip and total
        tipPercentageField.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        twoPeople.text = String(format: "$%.2f", total/2)
        threePeople.text = String(format: "$%.2f", total/3)
    }
    
    
   
        
    @IBAction func slideUp(_ sender: UITextField) {
            print("slideup")
        
//        self.totalLabel.alpha = 0
//        UIView.animate(withDuration:0.4, animations: {
//            self.totalLabel.alpha = 1
//        }, completion: nil)
              
        UIView.animate(withDuration: 0.4, animations: {
            self.tipView.transform = CGAffineTransform(translationX: 0, y: -600)
            self.moneySign.transform = CGAffineTransform(translationX: 0, y: -200)
            self.billAmountTextField.transform = CGAffineTransform(translationX: 0, y: -200)
            self.tipControl.transform = CGAffineTransform(translationX: 0, y: -200)
               }) { (Bool) in
                self.billAmountTextField.becomeFirstResponder()
                
               }
       
        
    
    
      
            
    }
    
    

}
