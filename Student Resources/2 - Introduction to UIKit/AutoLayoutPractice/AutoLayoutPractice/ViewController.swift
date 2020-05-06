//
//  ViewController.swift
//  AutoLayoutPractice
//
//  Created by School on 2020-05-03.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet var CalculatorLabel: UILabel!
    
    @IBAction func divisionButton(_ sender: Any) {
    }
    
    @IBAction func percentButton(_ sender: Any) {
    }
    
    @IBAction func negativeButton(_ sender: Any) {
    }
    
    @IBAction func ACButton(_ sender: Any) {
    }
    
    
    @IBAction func MultiplicationButton(_ sender: Any) {
    }
    
    @IBAction func nineButton(_ sender: Any) {
        CalculatorLabel.text = "9"
    }
    
    @IBAction func eightButton(_ sender: Any) {
        CalculatorLabel.text = "8"
    }
    
    @IBAction func sevenButton(_ sender: Any) {
        CalculatorLabel.text = "7"
    }
    
    
    @IBAction func subtractionButton(_ sender: Any) {
    }
    
    @IBAction func sixButton(_ sender: Any) {
        CalculatorLabel.text = "6"
    }
    
    @IBAction func fiveButton(_ sender: Any) {
        CalculatorLabel.text = "5"
    }
    
    @IBAction func fourButton(_ sender: Any) {
        CalculatorLabel.text = "4"
    }
    
    
    @IBAction func additionButton(_ sender: Any) {
    }
    
    @IBAction func threeButton(_ sender: Any) {
        CalculatorLabel.text = "3"
    }
    
    @IBAction func twoButton(_ sender: Any) {
        CalculatorLabel.text = "2"
    }
    
    @IBAction func oneButton(_ sender: Any) {
        CalculatorLabel.text = "1"
    }
    
    
    @IBAction func equalButton(_ sender: Any) {
    }
    
    @IBAction func periodButton(_ sender: Any) {
    }
    
    
    @IBAction func zeroButton(_ sender: Any) {
        CalculatorLabel.text = "0"
    }
    
    @IBAction func numberTapped(_ sender: UIButton) {
        if let text = sender.titleLabel?.text,
            let number = Int(text)
        
    }
    
    
    
    
    
    
    
    
    
    
}

