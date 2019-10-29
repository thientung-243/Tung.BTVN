//
//  ViewController.swift
//  randomStruct
//
//  Created by Tung on 10/29/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var picImageView: UIImageView!
    
    @IBOutlet weak var nameImageLabel: UILabel!
    
    @IBOutlet weak var pressRandom: UIButton!
    
    struct proti {
        var picImageView: UIImage
        var nameImageLabel: String
        var pressRandom: UIColor
        init(picname: UIImage, nameLabel: String, backGr: UIColor) {
            self.picImageView = picname
            self.nameImageLabel = nameLabel
            self.pressRandom = backGr
        }
    }
    
    var proti1 = proti(picname: UIImage(named: "anh1")!, nameLabel: "Picture1", backGr: UIColor.red)
    override func viewDidLoad() {
        super.viewDidLoad()
        print(proti1)
        
    }


}

