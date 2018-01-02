//
//  Desgnview.swift
//  GcApp
//
//  Created by Devineni, Sai Dheeraj on 6/24/17.
//  Copyright © 2017 Devineni, Sai Dheeraj. All rights reserved.
//

import UIKit

@IBDesignable
class Desgnview: UIView {

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
        //UIColor.blue.set()
               let rectangle = CGRect(x: 100, y: 100, width: 40, height: 40)
        //
        //
        //        let rect = CGRect(x: 500, y: 500, width: 40, height: 40)
        //
        //
        ////        let fillRect = CGRect(x: 101, y: 101, width: 38, height: 38)
        ////
        ////        let rect = CGRect(x: 200, y: 200, width: 100, height: 100)
        ////        let rect1 = CGRect(x: 201, y: 201, width: 100, height: 100)
        //
        //
        //       //let rectangle = CGRect(x: 500, y: 500, width: 40, height: 40)
        //        //let fillRect = CGRect(x: 600, y: 600, width: 40, height: 40)
        //
        //
                var context : CGContext = UIGraphicsGetCurrentContext()!
                context.setStrokeColor(red:0, green:0, blue:0, alpha:0.5)
        //
        //        var context1 : CGContext = UIGraphicsGetCurrentContext()!
        //        context1.setStrokeColor(red:0, green:0, blue:0, alpha:0.5)
        //        
               context.stroke(rectangle)
    }

}
