//
//  ViewController.swift
//  tinhTIenDien
//
//  Created by Tung on 10/27/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var numTextField: UITextField!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numTextField.keyboardType = .numberPad
        
    }
    

    @IBAction func calButton(_ sender: Any) {
        guard let num = Int(numTextField.text!) else {
            return
        }
        var price = 0
        if num > 400
        {
            price = (2834+2536+2014)*100 + (1678+1734)*50 + (num-400)*2927
        }
        else if num > 300
        {
            price = (2536+2014)*100 + (1678+1734)*50 + (num-300)*2834
        }
        else if num > 200
        {
            price = 2014*100 + (1678+1734)*50 + (num-200)*2536
        }
        else if num > 100
        {
            price = (1678+1734)*50 + (num-100)*2014
        }
        else if num > 50
        {
            price = 1678*50 + (num-50)*1734
        }
        else if num > 0
        {
            price = 1678*num
        }
        else
        {
            price = -1
        }
    
        priceLabel.text = "Price = \(price)"
    }
    
}

