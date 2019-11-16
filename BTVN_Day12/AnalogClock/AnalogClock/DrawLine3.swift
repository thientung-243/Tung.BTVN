//
//  DrawLine.swift
//  AnalogClock
//
//  Created by Thiện Tùng on 11/15/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class DrawLine3: UIView {
    
    
    @IBInspectable var lineWidth: CGFloat = 3
    @IBInspectable var fillColor: UIColor = UIColor.white
    

    
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        let path = UIBezierPath(ovalIn: rect)
        fillColor.setFill()
        path.fill()

        let linePath = UIBezierPath()
        
        linePath.lineWidth = lineWidth
        
        // bắt đầu vẽ
        linePath.move(to: CGPoint(x: bounds.width/2, y: bounds.height/2))
        linePath.addLine(to: CGPoint(x: bounds.width/2, y: bounds.height/2 - 25))
        
        UIColor.black.setStroke()
        linePath.stroke()
    }
    

}

