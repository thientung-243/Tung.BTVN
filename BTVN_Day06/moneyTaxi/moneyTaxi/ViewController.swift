//
//  ViewController.swift
//  moneyTaxi
//
//  Created by Tung on 10/26/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBOutlet weak var calButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputTextField.keyboardType = .numberPad
        
    }
    
    
    @IBAction func pricePress(_ sender: Any) {
    
        guard let s = Int(inputTextField.text!)
            else{
                return
        }
        var price = 5000
        if s <= 31
        {
            price += (s-1) * 4000
        }
        else
        {
            price += 30 * 4000 + (s-31) * 3000
        }
        outputLabel.text = "Price: \(price)"
    
    }
}

