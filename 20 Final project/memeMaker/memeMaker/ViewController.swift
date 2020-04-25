//
//  ViewController.swift
//  memeMaker
//
//  Created by School on 2020-04-18.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

var topChoices = [captionChoice]()
var bottomChoices = [captionChoice]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let coolChoice = captionChoice(emoji: "🕶", caption: "You know what's cool?")
        
        let madChoice = captionChoice(emoji: "💥", caption: "You know what makes me mad?")
        
        let loveChoice = captionChoice(emoji: "💕", caption: "You know what I love?")
        
        topChoices = [coolChoice, madChoice, loveChoice]
        topSegmentedControl.removeAllSegments()
        
        for yourChoice in topChoices{
            topSegmentedControl.insertSegment(withTitle: yourChoice.emoji, at: topChoices.count, animated: false)
        }
        topSegmentedControl.selectedSegmentIndex = 0
        
        let catChoice = captionChoice(emoji: "🐱", caption: "Cats wearing Hats")
        
        let dogChoice = captionChoice(emoji: "🐕", caption: "Dogs carrying Logs")
        
        let monkeyChoice = captionChoice(emoji: "🐒", caption: "Monkey's being Funky")
        
        bottomChoices = [catChoice, dogChoice, monkeyChoice]
        bottomSegmentedControl.removeAllSegments()
        
        for choice in bottomChoices{
            bottomSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        bottomSegmentedControl.selectedSegmentIndex = 0
    }
    
    func updateLabels(){
        let top = topSegmentedControl.selectedSegmentIndex
        let bottom = bottomSegmentedControl.selectedSegmentIndex
        
        let topChoice = topChoices[top]
        let bottomChoice = bottomChoices[bottom]
    
        topCaption.text = topChoice.caption
        bottomCaption.text = bottomChoice.caption
        
    }



    @IBOutlet weak var topSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var topCaption: UILabel!
    
    
    @IBOutlet weak var bottomCaption: UILabel!
    
    
    @IBOutlet weak var bottomSegmentedControl: UISegmentedControl!
    
    
    @IBAction func choiceSelected(_ sender: Any) {
        updateLabels()
    }
    
    
    
    
    
}

