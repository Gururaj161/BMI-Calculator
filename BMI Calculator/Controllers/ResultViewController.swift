//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Gururaja M on 23/06/25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLable: UILabel!
    @IBOutlet weak var advanceLabel: UILabel!
    
    var bmiValue:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLable.text = bmiValue
    }
    

    @IBAction func recalculateButtonAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
