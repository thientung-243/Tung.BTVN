//
//  ViewController.swift
//  BallRoadZ
//
//  Created by Thiện Tùng on 11/9/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var ball: BallZ!
    var radius: CGFloat = 50.0
    
    var timer1: Timer!
    var timer2: Timer!
    var timer3: Timer!
    var timer4: Timer!
    var timer5: Timer!
    var timer6: Timer!
    var timer7: Timer!
    var timer8: Timer!
    var timer9: Timer!
    var timer10: Timer!
    var timer11: Timer!
    var timer12: Timer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ball = BallZ(center: CGPoint(x: radius, y: radius), radius: radius, fillColor: UIColor.systemPink)
        view.addSubview(ball)
        timer1 = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runTimer1), userInfo: nil, repeats: true)
        
        ball.transform.rotated(by: <#T##CGFloat#>)
    }
    @objc func runTimer1(){
        left_right_1()
    }
    func left_right_1(){
        self.ball.frame.origin.x += 10
        if self.ball.frame.origin.x >= self.view.frame.maxX - self.radius*2{
            timer1.invalidate()
            timer2 = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runTimer2), userInfo: nil, repeats: true)
        }
    }
    
    @objc func runTimer2(){
        downBall_1()
    }
    func downBall_1(){
        self.ball.frame.origin.y += 10
        if self.ball.frame.origin.y >= self.view.frame.maxY/3 - self.radius{
            timer2.invalidate()
            timer3 = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runTimer3), userInfo: nil, repeats: true)
        }
    }

    @objc func runTimer3(){
        right_left_1()
    }
    func right_left_1(){
        self.ball.frame.origin.x -= 10
        if self.ball.frame.origin.x <= self.view.frame.minX{
            timer3.invalidate()
            timer4 = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runTimer4), userInfo: nil, repeats: true)
        }
    }
    
    @objc func runTimer4(){
        downBall_2()
    }
    func downBall_2(){
        self.ball.frame.origin.y += 10
        if self.ball.frame.origin.y >= self.view.frame.maxY*2/3 - self.radius{
            timer4.invalidate()
            timer5 = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runTimer5), userInfo: nil, repeats: true)
        }
    }

    @objc func runTimer5(){
        left_right_2()
    }
    func left_right_2(){
        self.ball.frame.origin.x += 10
        if self.ball.frame.origin.x >= self.view.frame.maxX - self.radius*2{
            timer5.invalidate()
            timer6 = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runTimer6), userInfo: nil, repeats: true)
        }
    }
    
    @objc func runTimer6(){
        downBall_3()
    }
    func downBall_3(){
        self.ball.frame.origin.y += 10
        if self.ball.frame.origin.y >= self.view.frame.maxY - self.radius*2{
            timer6.invalidate()
            timer7 = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runTimer7), userInfo: nil, repeats: true)
        }
    }
    
    @objc func runTimer7(){
        right_left_2()
    }
    func right_left_2(){
        self.ball.frame.origin.x -= 10
        if self.ball.frame.origin.x <= self.view.frame.minX{
            timer7.invalidate()
            timer8 = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runTimer8), userInfo: nil, repeats: true)
        }
    }
    @objc func runTimer8(){
        upBall_1()
    }
    func upBall_1(){
        self.ball.frame.origin.y -= 10
        if self.ball.frame.origin.y <= self.view.frame.maxY*2/3 - self.radius {
            timer8.invalidate()
            timer9 = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runTimer9), userInfo: nil, repeats: true)
        }
    }
    
    @objc func runTimer9(){
        left_right_3()
    }
    func left_right_3(){
        self.ball.frame.origin.x += 10
        if self.ball.frame.origin.x >= self.view.frame.maxX - self.radius*2{
            timer9.invalidate()
            timer10 = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runTimer10), userInfo: nil, repeats: true)
        }
    }
    
    @objc func runTimer10(){
        upBall_2()
    }
    func upBall_2(){
        self.ball.frame.origin.y -= 10
        if self.ball.frame.origin.y <= self.view.frame.maxY/3 - self.radius {
            timer10.invalidate()
            timer11 = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runTimer11), userInfo: nil, repeats: true)
        }
    }
    @objc func runTimer11(){
        right_left_3()
    }
    func right_left_3(){
        self.ball.frame.origin.x -= 10
        if self.ball.frame.origin.x <= self.view.frame.minX{
            timer11.invalidate()
            timer12 = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runTimer12), userInfo: nil, repeats: true)
        }
    }
    @objc func runTimer12(){
        upBall_3()
    }
    func upBall_3(){
        self.ball.frame.origin.y -= 10
        if self.ball.frame.origin.y <= self.view.frame.minY{
            timer12.invalidate()
            timer1 = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(runTimer1), userInfo: nil, repeats: true)
        }
    }
}

