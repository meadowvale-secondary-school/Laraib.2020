//
//  ViewController.swift
//  RPS
//
//  Created by School on 2020-04-16.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resetBoard()
        
    }

    @IBOutlet weak var appSign: UILabel!
    
    @IBOutlet weak var RPS: UILabel!
    
    @IBOutlet weak var rock: UIButton!
    
    @IBOutlet weak var paper: UIButton!
    
    @IBOutlet weak var scissor: UIButton!
    
    @IBOutlet weak var playAgain: UIButton!
    
    
    func resetBoard() {
        appSign.text = "🤖"
        RPS.text = "Rock, Paper, Scissor"
        rock.isHidden = false
        rock.isEnabled = true
        paper.isHidden = false
        paper.isEnabled = true
        scissor.isHidden = false
        scissor.isEnabled = true
        playAgain.isHidden = true
    }
    
    
    func play(_ player: Sign) {
        rock.isEnabled = false
        paper.isEnabled = false
        scissor.isEnabled = false
        
        let opponent = randomSign()
        appSign.text = opponent.signEmojis
        
        let gameResult = player.getSigns(opponent)
        
        switch gameResult {
        case .draw:
            RPS.text = "It's a draw!"
        case .win:
            RPS.text = "You Win!"
        case .lose:
            RPS.text = "you lost :("
        case .start:
            RPS.text = "Rock, Paper, Scissors"
        }
        
        switch player {
        case .rock:
            rock.isHidden = false
            paper.isHidden = true
            scissor.isHidden = true
        case .paper:
            paper.isHidden = false
            rock.isHidden = true
            scissor.isHidden = true
        case .scissor:
            scissor.isHidden = false
            paper.isHidden = true
            rock.isHidden = true
        
        }
        playAgain.isHidden = false
        
        
        
    }
    
    @IBAction func rockA(_ sender: AnyObject) {
        play(Sign.rock)
    }
    
    @IBAction func paperA(_ sender: AnyObject) {
        play(Sign.paper)
    }
    
    @IBAction func scissorA(_ sender: AnyObject) {
        play(Sign.scissor)
    }
    
    @IBAction func playAgainA(_ sender: Any) {
        resetBoard()
    }
    






}
