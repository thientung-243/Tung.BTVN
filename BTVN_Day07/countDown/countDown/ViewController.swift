//
//  ViewController.swift
//  countDown
//
//  Created by Tung on 10/27/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer:Timer!
    
    var count = 30
    
    
    
    @IBOutlet weak var numCount: UILabel!
    
    @IBOutlet weak var startPress: UIButton!
    
    @IBOutlet weak var restartPress: UIButton!
    
    @IBOutlet weak var pausePress: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startPress.layer.cornerRadius = 20.0
        restartPress.layer.cornerRadius = 10.0
        pausePress.layer.cornerRadius = 20.0
        
        
        
        
    }
    
    
    @IBAction func startButton(_ sender: Any) {
        countdown()
    }
    

    @IBAction func pauseButton(_ sender: Any) {
        timer.invalidate()
    }
    
    
    @IBAction func restartButton(_ sender: Any) {
        timer.invalidate()
        count = 30
        numCount.text = String(30)
    }
    
    func countdown()
    {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runTime), userInfo: nil, repeats: true)
   
    }
    @objc func runTime()
       {
           count -= 1
           numCount.text = String(count)
           if count < 1
           {
               timer.invalidate()
           }
           
       }
}

