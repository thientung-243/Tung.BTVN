//
//  ViewController.swift
//  Clock
//
//  Created by Thiện Tùng on 11/14/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hourLabel: UILabel!
    
    @IBOutlet weak var minLabel: UILabel!
    
    @IBOutlet weak var secLabel: UILabel!
    
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //print("\(currentDate), \(hour):\(minute):\(second)")
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runClock), userInfo: nil, repeats: true)
    }
    @objc func runClock(){
        let currentDate = Date()
        let calendar = Calendar.current
        
        let hour = calendar.component(.hour, from: currentDate)
        if hour < 10 {
            hourLabel.text = "0" + String(hour)
        }else{
            hourLabel.text = String(hour)
        }
        let minute = calendar.component(.minute, from: currentDate)
        if minute < 10 {
            minLabel.text = "0" + String(minute)
        }else{
            minLabel.text = String(minute)
        }
        let second = calendar.component(.second, from: currentDate)
        if second < 10 {
            secLabel.text = "0" + String(second)
        }else{
            secLabel.text = String(second)
        }
        
    }


}

