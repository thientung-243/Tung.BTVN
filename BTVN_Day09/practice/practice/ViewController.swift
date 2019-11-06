//
//  ViewController.swift
//  practice
//
//  Created by Tung on 11/4/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var myView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        myView.center = view.center
        myView.backgroundColor = UIColor.red
        view.addSubview(myView)
            
            
            // kich thuoc squareView
            let L = myView.frame.size.width
            // x = L / 10 la doan kich thuoc thut lai
            let x = L / 10
            
            let topLayer = CAShapeLayer()
            let path1 = UIBezierPath()
            path1.move(to: CGPoint(x: 0, y: 0))
            path1.addLine(to: CGPoint(x: L, y: 0))
            path1.addLine(to: CGPoint(x: L-x, y: x))
            path1.addLine(to: CGPoint(x: x, y: x))
            topLayer.path = path1.cgPath
            topLayer.fillColor = UIColor.white.cgColor
            topLayer.opacity = 0.6
            myView.layer.addSublayer(topLayer)
            
            
            let rightLayer = CAShapeLayer()
            let path2 = UIBezierPath()
            path2.move(to: CGPoint(x: L, y: 0))
            path2.addLine(to: CGPoint(x: L-x, y: x))
            path2.addLine(to: CGPoint(x: L-x, y: L-x
            ))
            path2.addLine(to: CGPoint(x: L, y: L))
            rightLayer.path = path2.cgPath
            rightLayer.fillColor = UIColor.white.cgColor
            rightLayer.opacity = 0.4
            myView.layer.addSublayer(rightLayer)
            
            let bottomLayer = CAShapeLayer()
            let path3 = UIBezierPath()
            path3.move(to: CGPoint(x: L, y: L))
            path3.addLine(to: CGPoint(x: L-x, y: L-x))
            path3.addLine(to: CGPoint(x: x, y: L-x))
            path3.addLine(to: CGPoint(x: 0, y: L))
            bottomLayer.path = path3.cgPath
            bottomLayer.fillColor = UIColor.black.cgColor
            bottomLayer.opacity = 0.4
            myView.layer.addSublayer(bottomLayer)
        
            let leftLayer = CAShapeLayer()
            let path4 = UIBezierPath()
            path4.move(to: CGPoint(x: 0, y: L))
            path4.addLine(to: CGPoint(x: x, y: L-x))
            path4.addLine(to: CGPoint(x: x, y: x))
            path4.addLine(to: CGPoint(x: 0, y: 0))
            leftLayer.path = path4.cgPath
            leftLayer.fillColor = UIColor.black.cgColor
            leftLayer.opacity = 0.5
            myView.layer.addSublayer(leftLayer)
    }


}

