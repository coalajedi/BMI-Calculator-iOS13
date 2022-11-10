//
//  BMI.swift
//  BMI Calculator
//
//  Created by Felipe Duarte Silva on 10/11/22.
//  Copyright © 2022 Felipe Duarte Silva. All rights reserved.
//

import UIKit

struct BMI {
    private let _value: Float
    private let _advice: String?
    private let _color: UIColor?
    
    init(value: Float, advice: String?, color: UIColor?) {
        self._value = value
        self._advice = advice
        self._color = color
    }
    
    var value: Float {
        get {
            self._value.round(to: 1)
        }
    }
    
    var advice: String {
        get {
            if let advice = self._advice {
                return advice
            } else {
                if self.value < 18.5 {
                    return "Eat more pies!"
                } else if self.value < 24.5 {
                    return "Fit as a fiddle!"
                } else {
                    return "Eat fewer pies!"
                }
            }
        }
    }
    
    var color: UIColor {
        get {
            if let color = self._color {
                return color
            } else {
                if  18.5 ..< 24.5 ~= self.value {
                    return #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
                } else {
                    return #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
                }
            }
        }
    }
}
