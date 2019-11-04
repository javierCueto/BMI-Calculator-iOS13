//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    var calculatorBrain = CalculatorBrain()
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSliderV: UISlider!
    @IBOutlet weak var weightSliderV: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func heightSlider(_ sender: UISlider) {
        let height = String(format : "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let weight = String(format : "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let height = heightSliderV.value
        let weight = weightSliderV.value
        calculatorBrain.calculateBmi(height : height, weight : weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBmi()
            destinationVC.color = calculatorBrain.getColor()
            destinationVC.advise = calculatorBrain.getAdvise()
        }
      }

}

