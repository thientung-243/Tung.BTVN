//
//  ViewController.swift
//  RoiTuDo
//
//  Created by Thiện Tùng on 11/13/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ball: BallView!
    let radius:CGFloat = 50.0
    
    var timer: Timer!
    
    var down: Bool = true
    
    var v:CGFloat = 0
    var a:CGFloat = 10
    var t:CGFloat = 0.01
    
    var h:CGFloat! = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ball = BallView(center: CGPoint(x: view.bounds.midX, y: 250), radius: radius, color: UIColor.systemPink)
        view.addSubview(ball)
        
        timer = Timer.scheduledTimer(timeInterval: TimeInterval(t), target: self, selector: #selector(runTimer), userInfo: nil, repeats: true)
    }
    
    @objc func runTimer(){
        if down{
            v += a * t
            self.ball.center.y += v * t * 250
            if self.ball.center.y >= self.view.bounds.maxY - radius {
                down = !down
                if h >= self.view.frame.maxY - radius {
                    
                    timer.invalidate()
                }
            }
        } else {
            v -= a * t
            self.ball.center.y -= v * t * 250 * 0.7
            if self.v <= 0 {
                v = 0
                down = !down
                h = self.ball.center.y
            }
            
        }
    }
    
    


}

