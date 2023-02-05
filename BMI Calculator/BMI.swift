//
//  BMI.swift
//  BMI Calculator
//
//  Created by Mercedes Martinez Milantchi on 2/5/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct BMI {
    let value: Float
    var advice: String {
        
        switch(value){
        case 0...18.5:
            return "Eat more pies!"
        case 18.5...24.9:
            return "Fit as a fiddle!"
        case let x where x >= 25.0:
            return "Eat fewer pies!"
        default:
            return "Invalid BMI"
        }
    }
    var color: UIColor {
        switch(value) {
        case 0...18.5:
            return #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1);
        case 18.5...24.9:
            return #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1);
        case let x where x >= 25.0:
            return #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1);
        default:
            return .red
        }
    }
    
 
}
