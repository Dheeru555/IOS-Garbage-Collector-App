//
//  SecondView.swift
//  GcApp
//
//  Created by Devineni, Sai Dheeraj on 6/24/17.
//  Copyright © 2017 Devineni, Sai Dheeraj. All rights reserved.
//

import Foundation
import UIKit

class SecondView : UIViewController
{
    
    @IBAction func ResetAll(_ sender: UIButton) {
        
        
    }
    @IBOutlet weak var Result: UILabel!
    @IBOutlet weak var Garbage: UIImageView!
    
    
    var AXVal = String()
    var BXVal = String()
    var CXVal = String()
    var DXVal = String()
    var AYVal = String()
    var BYVal = String()
    var CYVal = String()
    var DYVal = String()
    
    
    var ppA = String()
    var ppB = String()
    var ppC = String()
    var ppD = String()
    
    var xcor = Int()
    var ycor = Int()
    
    var average = Double()
    
     var loc = CGPoint(x : 0 , y : 0)

    override func viewDidLoad() {
        
        
        Garbage.image = UIImage(named:"garbage.png")
         Garbage.center = CGPoint(x : xcor*10 , y : ycor*10)
        
        Result.text = String(format : " x is \(xcor)  y is \(ycor) and avg is : %.3f", average)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var dest : ViewController = segue.destination as! ViewController
        dest.AXVal = AXVal
        dest.BXVal = BXVal
        dest.CXVal = CXVal
        dest.DXVal = DXVal
        dest.AYVal = AYVal
        dest.BYVal = BYVal
        dest.CYVal = CYVal
        dest.DYVal = DYVal
        
        
        dest.ppA = ppA
        dest.ppB = ppB
        dest.ppC = ppC
        dest.ppD = ppD
        
    }

    
    
    
}
