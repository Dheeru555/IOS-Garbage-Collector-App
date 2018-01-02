//
//  Helperview.swift
//  GcApp
//
//  Created by Devineni, Sai Dheeraj on 6/24/17.
//  Copyright © 2017 Devineni, Sai Dheeraj. All rights reserved.
//

import UIKit

@IBDesignable
class Helperview: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    @IBInspectable
    var lineWidth : CGFloat = 3
    var color = UIColor.red
    
    
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        color.set()
        
        
        let path = UIBezierPath()
        path.lineWidth = 1
        
        // path.move(to: CGPoint(x:50, y:100))
        
        path.move(to: CGPoint(x: 1, y: 1))
        //context.addLine(to: CGPoint(x: 200+25, y:200))
        //context.addLine(to: CGPoint(x: 225+25, y:200))
        // context.stroke
        var k = 1
        var l = 1
        for j in 1...25
        {
            for i in 1...25
            {
                k = k+10
                path.addLine(to: CGPoint(x: k, y:l))
                path.addLine(to: CGPoint(x: k, y: l+10))
                path.move(to: CGPoint(x: k, y: l))
                //l = l+3
            }
            path.stroke()
            k=1
            l=l+10
            print(l)
            path.move(to: CGPoint(x: k, y: l))
            
        }
        
        
        k=1
        path.move(to: CGPoint(x: 1, y: 251))
        for jj in 1...25
        {
            k = k+10
            path.addLine(to: CGPoint(x: k, y:251))
        }
        path.stroke()
        
        k=1
        path.move(to: CGPoint(x: 1, y: 1))
        for jj in 1...25
        {
            k = k+10
            path.addLine(to: CGPoint(x: 1, y:k))
        }
        path.stroke()
        
        //  UIColor.green.set()
        //path.fill()
        //
        //        
//        let path1 = UIBezierPath()
//        path1.lineWidth = 2
//        path1.move(to: CGPoint(x:51, y:61))
//        path1.addLine(to: CGPoint(x:61, y:61))
//        //  UIColor.green.set()
//        path1.stroke()
//        path1.fill()
        //
        
        
        
        
        
    }


}
