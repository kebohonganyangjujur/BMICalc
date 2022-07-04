//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by developer1 on 04/07/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit
struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            BMI(value: bmiValue, advice: "Peot!", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            BMI(value: bmiValue, advice: "Pas!", color: UIColor.green)
        } else {
            BMI(value: bmiValue, advice: "Gembrot!", color: UIColor.red)
        }
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.brown
    }
}
