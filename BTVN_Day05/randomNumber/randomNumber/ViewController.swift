//
//  ViewController.swift
//  randomNumber
//
//  Created by Tung on 10/20/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var numberButton: UIButton!
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.alpha = 0.0
        numberButton.layer.cornerRadius = 20.0
        numberLabel.alpha = 0.0
        numberButton.center = CGPoint(x: view.center.x, y: view.center.y + 500)
        
        UIView.animate(withDuration: 2) {
            self.numberLabel.alpha = 1.0
            self.numberButton.center.y = self.view.center.y + 200
        }
    }
    
    

    @IBAction func numberPress(_ sender: Any) {
        UIView.animate(withDuration: 1) {
            self.textLabel.alpha = 1.0
        }
        
        let number = Int.random(in: 0...999999)
        numberLabel.text = String(number)
        
        
    }
    
}

