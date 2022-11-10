//
//  DoubleExtension.swift
//  BMI Calculator
//
//  Created by Felipe Duarte Silva on 09/11/22.
//  Copyright © 2022 Felipe Duarte Sivla. All rights reserved.
//

import Foundation

extension Double {
    func round(to places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
