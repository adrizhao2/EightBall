//
//  ViewController.swift
//  EightBall
//
//  Created by Adrianna Zhao on 6/11/19.
//  Copyright © 2019 Adrianna Zhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    var answers = ["It is certain",
                   "It is decidedly so",
                   "Without a doubt",
                   "Yes, definitely",
                   "You may rely on it",
                   "As I see it, yes",
                   "Most likely",
                   "Outlook good",
                   "Yes",
                   "Signs point to yes",
                   "Reply hazy try again",
                   "Ask again later",
                   "Better not tell you now",
                   "Cannot predict now",
                   "Concentrate and ask again",
                   "Don't count on it",
                   "My reply is no",
                   "My sources say no",
                   "Outlook not so good",
                   "Very doubtful"]
    
    var lastIndex = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        // repeat loop version - probably on exam
        var randomIndex: Int
        repeat {
            randomIndex = Int.random(in: 0..<answers.count)
        } while randomIndex == lastIndex
        
        messageLabel.text = answers[randomIndex]
        lastIndex = randomIndex
    }
}

