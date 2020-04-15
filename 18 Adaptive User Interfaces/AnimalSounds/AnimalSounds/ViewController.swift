//
//  ViewController.swift
//  AnimalSounds
//
//  Created by School on 2020-04-11.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

let meowSound = SimpleSound(named: "meow")
let woofSound = SimpleSound(named: "woof")
let mooSound = SimpleSound(named:"moo")
    
    @IBOutlet weak var animalSoundLabel: UILabel!
    
    
    @IBAction func catButtonTapped(_ sender: AnyObject) {
        animalSoundLabel.text = "Meow!"
        meowSound.play()
    }
    
    @IBAction func dogButtonTapped(_ sender: AnyObject) {
        animalSoundLabel.text = "Woof!"
        woofSound.play()
    }
    
    @IBAction func cowButtonTapped(_ sender: AnyObject) {
        animalSoundLabel.text = "Moo!"
        mooSound.play()
    }
    
    
    
    
    
    
    
}

