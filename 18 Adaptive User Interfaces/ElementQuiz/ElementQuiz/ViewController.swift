//
//  ViewController.swift
//  ElementQuiz
//
//  Created by School on 2020-04-11.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateElement()
    }
let elementList = ["Carbon","Gold","Chlorine","Sodium"]
    
var currentElementIndex = 0
    
    func updateElement() {
        answerLabel.text = "?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
    }


    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func gotoNextElement(_ sender: AnyObject) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
        }
        updateElement()
    }
    
    @IBAction func showAnswer(_ sender: AnyObject) {
        answerLabel.text = elementList[currentElementIndex]
    }
    
    
    
    
    
}

