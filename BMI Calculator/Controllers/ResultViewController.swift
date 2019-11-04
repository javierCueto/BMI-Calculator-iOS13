//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by José Javier Cueto Mejía on 02/11/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue : String?
    var color : UIColor?
    var advise : String?
    
    @IBOutlet weak var bmiResultLabel: UILabel!
    @IBOutlet weak var adviseLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiResultLabel.text = bmiValue
        view.backgroundColor = color
        adviseLabel.text = advise
    }
    

    @IBAction func recalculateButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
