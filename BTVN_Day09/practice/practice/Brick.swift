//
//  Brick.swift
//  practice
//
//  Created by Tung on 11/4/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class Brick: UIView {
    
    var squareLayer: CAShapeLayer
    var radius:CGFloat = 0.0
    var fillColor: UIColor!
    
    //ham convenience tao frame duoc truc tiep trong ham
    convenience init(startPoint: CGPoint, radius: CGPoint, fillColor: UIColor){
        self.init(frame: CGRect(x: startPoint.x, y: startPoint.y, width: radius * 2.0, height: radius * 2.0))
        self.radius = radius
        self.fillColor = fillColor
    }
    

    override func draw(_ rect: CGRect) {
        if squareLayer == nil{
            squareLayer = CAShapeLayer()
            squareLayer.path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.width), cornerRadius: 0).cgPath
            
            squareLayer.fillColor = fillColor.cgColor
            self.layer.addSublayer(squareLayer)
            
            let L 
        }
    }
    
}
