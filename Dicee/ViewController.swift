//
//  ViewController.swift
//  Dicee
//
//  Created by Ghassan Al Mamar on 4/27/19.
//  Copyright © 2019 Ghassan Al Mamar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        UpdateDiceImages()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UpdateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        UpdateDiceImages()
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        UpdateDiceImages()
    }
    
    func UpdateDiceImages(){
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: "dice\(randomDiceIndex1+1)")
        diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2+1)")
    }

}

