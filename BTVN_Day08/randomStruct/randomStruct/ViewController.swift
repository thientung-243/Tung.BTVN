//
//  ViewController.swift
//  randomStruct
//
//  Created by Tung on 10/29/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    struct proti {
           var picImageName: String
           var nameLabel: String
           var pressRandom: UIColor
           init(picname: String, nameLabel: String, backGr: UIColor) {
               self.picImageName = picname
               self.nameLabel = nameLabel
               self.pressRandom = backGr
           }
       }
  
    @IBOutlet weak var picImageName: UIImageView!
    
    @IBOutlet weak var nameImageLabel: UILabel!
    
    @IBOutlet weak var pressRandom: UIButton!
    
   
    let proti1 = proti(picname: "anh1", nameLabel: "Picture1", backGr: UIColor.red)
    let proti2 = proti(picname: "anh2", nameLabel: "Picture2", backGr: UIColor.blue)
    let proti3 = proti(picname: "anh3", nameLabel: "Picture3", backGr: UIColor.white)
    let proti4 = proti(picname: "anh4", nameLabel: "Picture4", backGr: UIColor.brown)
    let proti5 = proti(picname: "hinh1", nameLabel: "Picture5", backGr: UIColor.yellow)
    let proti6 = proti(picname: "hinh2", nameLabel: "Picture6", backGr: UIColor.orange)
    let proti7 = proti(picname: "hinh3", nameLabel: "Picture7", backGr: UIColor.green)
    let proti8 = proti(picname: "hinh4", nameLabel: "Picture8", backGr: UIColor.gray)
    let proti9 = proti(picname: "hinh5", nameLabel: "Picture9", backGr: UIColor.purple)
    let proti10 = proti(picname: "hinh6", nameLabel: "Picture10", backGr: UIColor.cyan)
    
    var arr:[proti] = []
       
    override func viewDidLoad() {
    
        super.viewDidLoad()
        arr =  [proti1, proti2, proti3, proti4, proti5, proti6, proti7, proti8, proti9, proti10]
       
      
        pressRandom.layer.cornerRadius = 20.0
        
        picImageName.image = UIImage(named: proti1.picImageName)
        nameImageLabel.text = proti1.nameLabel
        pressRandom.backgroundColor = proti1.pressRandom
    }


    @IBAction func Press(_ sender: Any) {
        
        let ran = arr.randomElement()!
        picImageName.image = UIImage(named: ran.picImageName)
        nameImageLabel.text = ran.nameLabel
        pressRandom.backgroundColor = ran.pressRandom
        
    }
}

