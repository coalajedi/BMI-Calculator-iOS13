//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Felipe Duarte Silva on 10/11/22.
//  Copyright © 2022 Felipe Duarte Silva. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    private var _bmi: BMI?
    
    
    var bmi: BMI {
        get {
            self._bmi ?? BMI(value: 0.0, advice: nil, color: nil)
        }
    }
    
    mutating func calculateBMI(height: Float, weight: Float) -> Void {
        let bmiValue = weight / pow(height, 2)
        
        self._bmi = BMI(value: bmiValue, advice: nil, color: nil)
    }
}
