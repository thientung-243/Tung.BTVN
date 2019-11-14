//
//  ViewController.swift
//  BallRoadO
//
//  Created by Thiện Tùng on 11/8/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var ball: Ball!
    var radius: CGFloat = 50.0
    
    var timer1: Timer!
    var timer2: Timer!
    var timer3: Timer!
    var timer4: Timer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ball = Ball(center: CGPoint(x: radius, y: radius), radius: radius, fillColor: UIColor.systemPink)
        view.addSubview(ball)
        timer1 = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runTime1), userInfo: nil, repeats: true)
        
    }
    
    @objc func runTime1(){
        left_right()
    }
    func left_right(){
        self.ball.frame.origin.x += 10
        if self.ball.frame.origin.x >= self.view.frame.maxX - self.radius*2{
            timer1.invalidate()
            timer2 = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runTime2), userInfo: nil, repeats: true)
        }
    }
    @objc func runTime2(){
        downBall()
    }
    func downBall(){
        self.ball.frame.origin.y += 10
        if self.ball.frame.origin.y >= self.view.frame.maxY - self.radius*2{
            timer2.invalidate()
            timer3 = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runTime3), userInfo: nil, repeats: true)
        }
    }
    @objc func runTime3(){
        right_left()
    }
    func right_left(){
        self.ball.frame.origin.x -= 10
        if self.ball.frame.origin.x <= self.view.frame.minX{
            timer3.invalidate()
            timer4 = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runTime4), userInfo: nil, repeats: true)
        }
    }
    @objc func runTime4(){
        upBall()
    }
    func upBall(){
        self.ball.frame.origin.y -= 10
        if self.ball.frame.origin.y <= self.view.frame.minY{
            timer4.invalidate()
            timer1 = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runTime1), userInfo: nil, repeats: true)
        }
    }

}

