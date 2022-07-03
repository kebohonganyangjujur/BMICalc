//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by developer1 on 03/07/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue = "0.0"
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
    }

    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
       
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
  
    */

}
