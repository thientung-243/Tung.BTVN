//
//  ViewController.swift
//  randomColor
//
//  Created by Tung on 10/26/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var color:[UIColor] = [UIColor.red, UIColor.yellow, UIColor.brown, UIColor.blue, UIColor.green]
    var nameColor:UIColor = UIColor.black
    
    @IBOutlet weak var randomColor: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameColor = color.randomElement()!
        randomColor.backgroundColor = nameColor
       
        
        
    }
    
    @IBAction func randomPress(_ sender: Any) {
        nameColor = random()
        randomColor.backgroundColor = nameColor
        
    }
    func random() -> UIColor
    {
        var name = color.randomElement()
        if name == nameColor
        {
            name = random()
        }
        return name!
        
    }
    
   
}

