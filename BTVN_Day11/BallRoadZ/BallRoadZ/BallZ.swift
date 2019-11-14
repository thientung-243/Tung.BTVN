//
//  BallZ.swift
//  BallRoadZ
//
//  Created by Thiện Tùng on 11/9/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class BallZ: UIView {

    var circleLayer: CAShapeLayer!
    var radius: CGFloat = 0.0
    var color: UIColor!
    
    convenience init(center: CGPoint, radius: CGFloat, fillColor: UIColor){
        self.init(frame: CGRect(x: center.x - radius, y: center.y, width: radius*2.0, height: radius*2.0))
        self.radius = radius
        self.color = fillColor
    }
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        if circleLayer == nil{
            circleLayer = CAShapeLayer()
            circleLayer.path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)).cgPath
            circleLayer.fillColor = color.cgColor
            self.layer.addSublayer(circleLayer)
        }
    }
    
}
