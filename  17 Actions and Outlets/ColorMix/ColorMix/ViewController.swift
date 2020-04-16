//
//  ViewController.swift
//  colorMix
//
//  Created by School on 2020-04-10.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateColor()
        colorView.layer.borderWidth = 5
        colorView.layer.borderWidth = 20
        colorView.layer.borderColor = UIColor.black.cgColor
        
    }

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!

    @IBOutlet weak var colorView: UIView!
    
    @IBAction func switchChanged(_ sender: UISwitch) {
       updateColor()
    }
    
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if blueSwitch.isOn{
            blue = CGFloat(blueSlider.value)
        }
        if greenSwitch.isOn{
            green = CGFloat(greenSlider.value)
        }
        if redSwitch.isOn{
            red = CGFloat(redSlider.value)
        }
        let color = UIColor(red:red, green: green, blue: blue, alpha:1)
        colorView.backgroundColor = color
    }
    
    func updateControls() {
        redSlider.isEnabled = redSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
    }
    
    
    @IBAction func sliderChanged(_ sender: AnyObject) {
        updateControls()
    }
    @IBAction func reset(_ sender: AnyObject) {
    }
}

