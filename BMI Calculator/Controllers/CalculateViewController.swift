//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    
    var bmi: Float = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", heightSlider.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", weightSlider.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
    
        bmi = weight / (height * height)
        // Method every UIViewController has to be able to do a segue
        self.performSegue(withIdentifier: "goToResult", sender: self) // self keyword here is optional
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // use sender.destination to establish the receiving second view
        
        // Use a conditional statement to check for correct segue identifier
        if segue.identifier == "goToResult" {
            // we cannot stop at let destinationVC = segue.destination because the value returns a basic UIViewController;
            // we, however, need a specific view controller (ResultsViewController) by downcasting ('as' keyword).
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = String(format: "%.1f", bmi)
        }
    }
    
}

