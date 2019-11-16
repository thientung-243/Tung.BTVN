//
//  ViewController.swift
//  AnalogClock
//
//  Created by Thiện Tùng on 11/15/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit
@IBDesignable

class ViewController: UIViewController {
    
    @IBOutlet weak var secondLabel: DrawLine!
    
    @IBOutlet weak var minuteLabel: DrawLine2!
    
    @IBOutlet weak var hourLabel: DrawLine3!
    
    var timer: Timer!
    
    var rads: CGFloat = 0
    var radm: CGFloat = 0
    var radh: CGFloat = 0
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondLabel.layer.cornerRadius = 45/2
        secondLabel.clipsToBounds = true
        minuteLabel.layer.cornerRadius = 45/2
        minuteLabel.clipsToBounds = true
        hourLabel.layer.cornerRadius = 45/2
        hourLabel.clipsToBounds = true
        
        
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runTimer), userInfo: nil, repeats: true)
        
        
        
    }
    @objc func runTimer(){
        let date = Date()
        let calendar = Calendar.current
        
        let hour = calendar.component(.hour, from: date)
        let minute = calendar.component(.minute, from: date)
        let second = calendar.component(.second, from: date)
        
        print("\(hour) : \(minute) : \(second)")
        
       
        rads = .pi/30 * CGFloat(second)
        self.secondLabel.transform = CGAffineTransform(rotationAngle: rads)
        radm = .pi/30 * CGFloat(minute)
        self.minuteLabel.transform = CGAffineTransform(rotationAngle: radm)
        radh = .pi/6 * CGFloat(hour) + .pi/6 * CGFloat(minute)/60
        self.hourLabel.transform = CGAffineTransform(rotationAngle: radh)
        
    }


}

