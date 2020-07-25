//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Jennifer Trinh on 7/6/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
      
       
        
        // Do any additional setup after loading the view.
        
    }
 
    
    
    @IBOutlet weak var tipSelection: UISegmentedControl!
    
     
    @IBAction func setDefaultTip(_ sender: Any) {
        let defaultTip = UserDefaults.standard
               
               defaultTip.set(tipSelection.selectedSegmentIndex, forKey: "defaultTip")
               
               defaultTip.synchronize()
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
