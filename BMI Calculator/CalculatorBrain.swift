//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mercedes Martinez Milantchi on 2/5/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit


struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
        // fixed with nil-coalescing operator
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0) // Checks if bmi struct is there (i.e. not nil), if it is, retrieves value from .value. If not, takes 0.0 as default
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        bmi = BMI(value: bmiValue)
//        print(bmi?.advice)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Advice Error"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
    
    
    
    
    
    
    
    
    
    
    
    
    // By this point, Yu hasn't taught calculated properties and she also does not include height weight values inside the calculator Brain.
//    var bmi: Float {
//        return weight / (height * height)
//    }
    
    
//    func getHeightString() -> String {
//        let height = String(format: "%.2f", height)
//        return "\(height)m"
//    }
//
//    func getWeightString() -> String {
//        let weight = String(format: "%.0f", weight)
//        return "\(weight)Kg"
//    }
    
}
