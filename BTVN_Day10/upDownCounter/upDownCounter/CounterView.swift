//
//  CounterView.swift
//  upDownCounter
//
//  Created by Thiện Tùng on 11/7/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

@IBDesignable
class CounterView: UIView {
    private struct Constants{
        static let numberOfGlasses:CGFloat = 8
        static let lineWidth: CGFloat = 5.0
        static let arcWidth: CGFloat = 76
        static var halfOfLineWidth: CGFloat{
            return lineWidth / 2
        }
    }
    
    @IBInspectable var counter: Int = 5 {
        didSet{
            if counter <= Int(Constants.numberOfGlasses){
                setNeedsDisplay()
            }
        }
    }

    @IBInspectable var outlineColor: UIColor = UIColor.blue
    @IBInspectable var counterColor: UIColor = UIColor.orange
    
   
    override func draw(_ rect: CGRect) {
        
        let center = CGPoint(x: bounds.width/2, y: bounds.height/2)
        let radius: CGFloat = max(bounds.width, bounds.height)
        let startAngle: CGFloat = 3 * .pi/4
        let endAngle: CGFloat = .pi/4
        
        let path = UIBezierPath(arcCenter: center, radius: radius/2 - Constants.arcWidth/2, startAngle: startAngle, endAngle: endAngle, clockwise: true)
        
        path.lineWidth = Constants.arcWidth
        counterColor.setStroke()
        path.stroke()
        
        //1
        let angleDifference: CGFloat = 2 * .pi - startAngle + endAngle
        //sau do tinh toan cung
        let arcLengthPerGlass = angleDifference / CGFloat(Constants.numberOfGlasses)
        //sau đó nhân lên bởi bán kính
        let outlineEndAngle = arcLengthPerGlass * CGFloat(counter) + startAngle
        
        
        let outlinePath = UIBezierPath(arcCenter: center, radius: bounds.width/2 - Constants.halfOfLineWidth, startAngle: startAngle, endAngle: outlineEndAngle, clockwise: true)
        outlineColor.setStroke()
        outlinePath.lineWidth = Constants.lineWidth
        
        
        
        
        outlinePath.addArc(withCenter: center, radius: bounds.width/2 - Constants.arcWidth + Constants.halfOfLineWidth, startAngle: outlineEndAngle, endAngle: startAngle, clockwise: false)
        
        outlinePath.close()
        
        outlineColor.setStroke()
        outlinePath.lineWidth = Constants.lineWidth
        outlinePath.stroke()
        
        
    }
    func upTo(){
        if counter < 8{
            counter += 1
        }
    }
    func downTo(){
        if counter > 0{
            counter -= 1
        }
    }
    

}
