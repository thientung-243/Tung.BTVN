//
//  Button.swift
//  upDownCounter
//
//  Created by Thiện Tùng on 11/7/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

@IBDesignable
class Button: UIButton {
    
    var halfWidth: CGFloat{
        return bounds.width/2
    }
    var halfHeight: CGFloat{
        return bounds.height/2
    }
    
    @IBInspectable var plusLineWidth: CGFloat = 5.0
    @IBInspectable var fillColor: UIColor = UIColor.green
    @IBInspectable var check: Bool = true
    
    override func draw(_ rect: CGRect) {
        
        let path = UIBezierPath(ovalIn: rect)
        fillColor.setFill()
        path.fill()
        
        
        let plusWidth: CGFloat = min(bounds.width, bounds.height) * 0.6
        let halfPlusWidth: CGFloat = plusWidth / 2
        
        let plusPath = UIBezierPath()
        
        plusPath.lineWidth = plusLineWidth
        
        plusPath.move(to: CGPoint(x: halfWidth - halfPlusWidth, y: halfHeight))
        plusPath.addLine(to: CGPoint(x: halfWidth + halfPlusWidth, y: halfHeight))
   
        if check{
            
            plusPath.move(to: CGPoint(x: halfWidth, y: halfHeight - halfPlusWidth))
            plusPath.addLine(to: CGPoint(x: halfWidth, y: halfHeight + halfPlusWidth))
        }
        
        UIColor.white.setStroke()
        plusPath.stroke()
    
    }
    
    
    

}
