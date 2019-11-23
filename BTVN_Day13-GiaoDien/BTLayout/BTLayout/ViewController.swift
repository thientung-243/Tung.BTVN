//
//  ViewController.swift
//  BTLayout
//
//  Created by Thiện Tùng on 11/20/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var circle: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        circle.layer.cornerRadius = 35
    }


}

