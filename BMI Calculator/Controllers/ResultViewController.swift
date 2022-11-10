//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Felipe Duarte Silva on 10/11/22.
//  Copyright © 2022 Felipe Duarte Silva. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        self.view.backgroundColor = color
    }
    

    @IBAction func onRecalculateBmiPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }    

}
