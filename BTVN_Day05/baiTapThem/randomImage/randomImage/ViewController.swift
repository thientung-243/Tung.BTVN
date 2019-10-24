//
//  ViewController.swift
//  randomImage
//
//  Created by Tung on 10/23/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let nameImage:[String] = ["hinh1", "hinh2", "hinh3", "hinh4", "hinh5", "hinh6"]
    @IBOutlet weak var randImage: UIImageView!
    
    @IBOutlet weak var randPress: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randImage.image = UIImage(named: nameImage.randomElement()!)
        randPress.layer.cornerRadius = 20.0
        randImage.alpha = 0.0
        randPress.center = CGPoint(x: view.center.x, y: view.center.y + 500)
        
        UIView.animate(withDuration: 2) {
            self.randImage.alpha = 1.0
            self.randPress.center.y = self.view.center.y + 200
        
        }
    }
    
    @IBAction func imgPush(_ sender: Any) {
        
        randImage.image = UIImage(named: nameImage.randomElement()!)
        
        randPress.setTitle("Chon anh khac", for: .normal)
    }
    
    
    

}

