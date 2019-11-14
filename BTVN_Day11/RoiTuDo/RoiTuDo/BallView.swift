//
//  BallView.swift
//  RoiTuDo
//
//  Created by Thiện Tùng on 11/13/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class BallView: UIView {

    var radius: CGFloat!
    var color: UIColor!
    
    convenience init(center: CGPoint, radius: CGFloat, color: UIColor){
        self.init(frame: CGRect(x: center.x - radius, y: center.y - radius, width: radius*2, height: radius*2))
        self.radius = radius
        self.color = color
    }
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        let path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: radius*2, height: radius*2))
        let smallPath = UIBezierPath(ovalIn: CGRect(x: self.bounds.size.width/2 - radius/2, y: self.bounds.size.height/2 - radius/2, width: radius, height: radius))
        
        let overCirCle = CAShapeLayer()
        overCirCle.path = path.cgPath
        overCirCle.fillColor = color.cgColor
        self.layer.addSublayer(overCirCle)
        
        let smallCirCle = CAShapeLayer()
        smallCirCle.path = smallPath.cgPath
        smallCirCle.fillColor = UIColor.black.cgColor
        
        self.layer.addSublayer(smallCirCle)
    }
   
}
