//
//  ViewController.swift
//  Dicee App
//
//  Created by Rithya on 1/1/19.
//  Copyright © 2019 Rithya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceView1: UIImageView!
    @IBOutlet weak var diceView2: UIImageView!
    
    @IBAction func rollButton(_ sender: UIButton) {
       updateDiceLabel()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       updateDiceLabel()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceLabel()
    }
    

    func updateDiceLabel() {
        diceView1.image = UIImage(named: "dice\(Int.random(in: 1...6))")
        diceView2.image = UIImage(named: "dice\(Int.random(in: 1...6))")
    }
    
}
