//
//  FloatExtension.swift
//  BMI Calculator
//
//  Created by Felipe Duarte Silva on 09/11/22.
//  Copyright © 2022 Felipe Duarte Silva. All rights reserved.
//

import Foundation

extension Float {
    func round(to places: Int) -> Float {
        let divisor = pow(10.0, Float(places))
        return (self * divisor).rounded() / divisor
    }
}
