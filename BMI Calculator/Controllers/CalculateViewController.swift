//
//  CalculateViewController.swift
//  BMI Calculator
//
//  Created by Felipe Duarte Silva on 09/11/2022.
//  Copyright © 2022 Felipe Duarte Silva. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onHeightChanged(_ sender: UISlider) {
        let height = sender.value.round(to: 2)
        
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func onWeightChanged(_ sender: UISlider) {
        let weight = Int(sender.value.round(to: 0))
        
        weightLabel.text = "\(weight)Kg"
    }
    
    
    @IBAction func onCalculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationViewController = segue.destination as! ResultViewController
            
            destinationViewController.bmiValue = String(calculatorBrain.bmi.value)
            destinationViewController.advice = calculatorBrain.bmi.advice
            destinationViewController.color = calculatorBrain.bmi.color
        }
    }
}

