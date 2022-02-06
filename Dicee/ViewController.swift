//
//  ViewController.swift
//  Dicee
//
//  Created by Alexandr Nikolaev on 6.02.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var leftDiceImageView: UIImageView!
    @IBOutlet weak var rightDiceImageView: UIImageView!
    @IBOutlet weak var rollButtonView: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        leftDiceImageView.layer.cornerRadius = leftDiceImageView.frame.height / 4
        rightDiceImageView.layer.cornerRadius = rightDiceImageView.frame.height / 4
        rollButtonView.layer.cornerRadius = rollButtonView.frame.height / 8
    }

    @IBAction func rollButtonDidPress(_ sender: UIButton) {
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        leftDiceImageView.image = diceArray.randomElement()
        rightDiceImageView.image = diceArray.randomElement()
    }
}

