//
//  ViewController.swift
//  upDownCounter
//
//  Created by Thiện Tùng on 11/7/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterView: CounterView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func downPress(_ sender: Any) {
        counterView.downTo()
    }
    @IBAction func plusPress(_ sender: Any) {
        counterView.upTo()
        
    }
    
}

