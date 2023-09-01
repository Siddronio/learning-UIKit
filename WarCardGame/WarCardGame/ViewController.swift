//
//  ViewController.swift
//  WarCardGame
//
//  Created by Jhonatan Sidrônio on 25/08/23.
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    // Properties
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func dealTapped(_ sender: Any) {
        
        // Randomize some numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        // Update the image views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        // Compare the random numbers
        if leftNumber > rightNumber {
            // Left side wins
            leftScore += 1
            // Update de Label
             leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber < rightNumber { // Keep consistent (leftnumber first)
            // Right side wins
            rightScore += 1
            // Update the Label
            rightScoreLabel.text = String(rightScore)
        }
        else {
            // Tie
            
        }
    }
    
    
    
    
    
    

}

