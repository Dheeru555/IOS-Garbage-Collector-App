//
//  GarbageCalc.swift
//  GcApp
//
//  Created by Devineni, Sai Dheeraj on 6/26/17.
//  Copyright © 2017 Devineni, Sai Dheeraj. All rights reserved.
//

import Foundation

class GarbageCalc
{
    var AX : Double
    var BX : Double
    var CX : Double
    var DX : Double
    var AY : Double
    var BY : Double
    var CY : Double
    var DY : Double
    var PopA : Double
    var PopB : Double
    var PopC : Double
    var PopD : Double
    
    
    var DA : Double=0.0
    var DB : Double=0.0
    var DC : Double=0
    var DD : Double=0
    
    var UA : Double=0
    var UB : Double=0
    var UC : Double=0
    var UD : Double=0
    
    var avgUn : Double=0
    var smlUn : Double=0
    
    var temp = 1
    
    var x = 0
    var y = 0
    
    
    init(_ AX:Double, _ BX:Double, _ CX: Double, _ DX: Double, _ AY:Double, _ BY:Double, _ CY: Double, _ DY: Double,_ PopA:Double,_ PopB:Double,_ PopC: Double,_ PopD: Double){
        
        self.AX = AX
        self.BX = BX
        self.CX = CX
        self.DX = DX
        self.AY = AY
        self.BY = BY
        self.CY = CY
        self.DY = DY
        
        self.PopA = PopA
        self.PopB = PopB
        self.PopC = PopC
        self.PopD = PopD
    
    }
    
    
    func calcUn (_ da:Double, _ pop: Double) -> Double
    {
        
        if da <= 2
        {
            return Double(99999)
        }
        else
        {
            return (pop/da)
        }
    }
    
    func computeVal() -> (Avg: Double, xcor : Int, ycor : Int)
    {
     
        for i in 1...25
        {
            for j in 1...25
            {
                DA = sqrt(pow(Double(i)-AX,2) + pow(Double(j)-AY,2))
                DB = sqrt(pow(Double(i)-BX,2) + pow(Double(j)-BY,2))
                DC = sqrt(pow(Double(i)-CX,2) + pow(Double(j)-CY,2))
                DD = sqrt(pow(Double(i)-DX,2) + pow(Double(j)-DY,2))
                
                UA = calcUn(DA,PopA)
                UB = calcUn(DB,PopB)
                UC = calcUn(DC,PopC)
                UD = calcUn(DD,PopD)
                
                avgUn = (UA+UB+UC+UD)/(PopA+PopB+PopC+PopD)
                
                if temp == 1
                {
                    smlUn = avgUn
                    x = i
                    y = j
                }
                else if avgUn < smlUn
                {
                    smlUn = avgUn
                    x = i
                    y = j
                }
                
                temp = 0
            }
            
            
        }

        return(smlUn,x,y)
    }
    
}
