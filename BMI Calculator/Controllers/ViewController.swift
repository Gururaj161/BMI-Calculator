//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weigthSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = "\(String(Int(sender.value))) Kg"
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f", sender.value)) m"
        print("hi")
    }
    
    @IBAction func calculatePressedAction(_ sender: UIButton) {
        let height = heightSlider.value
        let width = weigthSlider.value
        let BMI = width / pow(height, 2)
        
        let resultVC = self.storyboard?.instantiateViewController(identifier: "ResultViewController") as! ResultViewController
        resultVC.bmiValue =  "\(String(format: "%.2f", BMI))"
        self.navigationController?.pushViewController(resultVC, animated: true)

    }
}

