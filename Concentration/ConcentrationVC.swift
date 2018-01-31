//
//  ViewController.swift
//  Concentration
//
//  Created by Ulan Assanov on 1/31/18.
//  Copyright © 2018 Ulan Assanov. All rights reserved.
//

import UIKit

class ConcentrationVC: UIViewController {
    
    @IBOutlet weak var flipsLabel: UILabel!
    var flipCount : Int = 0{
        didSet{
            flipsLabel.text = "Flips:\(flipCount)"
            print("Flips: \(flipCount)")
        }
    }
    @IBOutlet var cardButtons: [UIButton]!
    
    let emojies:[String] = ["👻","💀","🎃","👻"]
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender){
            flipCard(withEmoji: emojies[cardNumber], on: sender)
        }
    }
    func flipCard(withEmoji emoji : String, on button: UIButton){
        if( button.currentTitle == emoji){
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = UIColor.orange
        }
        else{
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = UIColor.white
        }
    }
}

