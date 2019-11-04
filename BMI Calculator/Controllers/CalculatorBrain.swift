//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by José Javier Cueto Mejía on 02/11/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorBrain {
    var bmi : BMI?
    
    mutating func calculateBmi(height : Float,weight : Float){
        let bmivalue = weight / (pow(height, 2))
        
        if bmivalue < 18.5 {
            bmi = BMI(value: bmivalue, advise: "Estas flaco, come mas galletas!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmivalue < 24.9 {
            bmi = BMI(value: bmivalue, advise: "Buen estado físico", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmivalue, advise: "Estas muy gordo, come más verduras", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
        
    }
    
    func getBmi() -> String {
        let bmis = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmis
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    func getAdvise() -> String {
        return bmi?.advise ?? "Sin consejo"
    }
    
}
