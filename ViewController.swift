//
//  ViewController.swift
//  GcApp
//
//  Created by Devineni, Sai Dheeraj on 6/22/17.
//  Copyright © 2017 Devineni, Sai Dheeraj. All rights reserved.
//

import UIKit

import Foundation

class ViewController: UIViewController,UITextFieldDelegate{
    
    
    var AXVal = String(1)
    var BXVal = String(1)
    var CXVal = String(1)
    var DXVal = String(1)
    var AYVal = String(1)
    var BYVal = String(1)
    var CYVal = String(1)
    var DYVal = String(1)
    
    
    var ppA = String(1000)
    var ppB = String(1000)
    var ppC = String(1000)
    var ppD = String(1000)
    
    var environment : GarbageCalc!
    

    @IBOutlet weak var Mainview: UIView!
    
    
   
    
   
    @IBOutlet weak var Labelx: UILabel!
    @IBOutlet weak var Labely: UILabel!
    @IBOutlet weak var Labelpop: UILabel!
    
    @IBOutlet weak var labelA: UILabel!
    @IBOutlet weak var labelB: UILabel!
    @IBOutlet weak var labelC: UILabel!
    @IBOutlet weak var labelD: UILabel!
    

    @IBOutlet weak var ValueAX: UITextField!
    @IBOutlet weak var ValueAY: UITextField!
    
    @IBOutlet weak var ValueBX: UITextField!
    @IBOutlet weak var ValueBY: UITextField!
    
    @IBOutlet weak var ValueCX: UITextField!
    @IBOutlet weak var ValueCY: UITextField!
    
    @IBOutlet weak var ValueDX: UITextField!
    @IBOutlet weak var ValueDY: UITextField!
    
    @IBOutlet weak var PopA: UITextField!
    @IBOutlet weak var PopB: UITextField!
    @IBOutlet weak var PopC: UITextField!
    @IBOutlet weak var PopD: UITextField!
    
    
    @IBOutlet weak var StepperAX: UIStepper!
    @IBOutlet weak var StepperAY: UIStepper!
    @IBOutlet weak var StepperBX: UIStepper!
    @IBOutlet weak var StepperBY: UIStepper!
    @IBOutlet weak var StepperCX: UIStepper!
    @IBOutlet weak var StepperCY: UIStepper!
    @IBOutlet weak var StepperDX: UIStepper!
    @IBOutlet weak var StepperDY: UIStepper!
    
    @IBOutlet weak var SliderA: UISlider!
    @IBOutlet weak var SliderB: UISlider!
    @IBOutlet weak var SliderC: UISlider!
    @IBOutlet weak var SliderD: UISlider!
    
    
    @IBOutlet weak var Compute: UIButton!
    
    @IBOutlet weak var Reset: UIButton!
    
   // var loc = CGPoint(x : 0 , y : 0)
    var x : Int=0
    var y : Int=0
    var smlUn : Double=0

    
    @IBAction func ChangeAX(_ sender: UIStepper) {
        ValueAX.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func ChangeAY(_ sender: UIStepper) {
        ValueAY.text = "\(Int(sender.value))"
    }
    
    @IBAction func ChangeBX(_ sender: UIStepper) {
        ValueBX.text = "\(Int(sender.value))"
    }
    
    @IBAction func ChangeBY(_ sender: UIStepper) {
        ValueBY.text = "\(Int(sender.value))"
    }
    
    @IBAction func ChangeCX(_ sender: UIStepper) {
        ValueCX.text = "\(Int(sender.value))"
    }
    
    @IBAction func ChangeCY(_ sender: UIStepper) {
        ValueCY.text = "\(Int(sender.value))"
    }
    
    @IBAction func ChangeDX(_ sender: UIStepper) {
        ValueDX.text = "\(Int(sender.value))"
    }
    
    @IBAction func ChangeDY(_ sender: UIStepper) {
        ValueDY.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func ChangeSliderA(_ sender: UISlider) {
        PopA.text = "\(Int(sender.value)*1000)"
    }
    
    @IBAction func ChangeSliderB(_ sender: UISlider) {
        PopB.text = "\(Int(sender.value)*1000)"
    }
    
    @IBAction func ChangeSliderC(_ sender: UISlider) {
        PopC.text = "\(Int(sender.value)*1000)"
    }
    
    @IBAction func ChangeSliderD(_ sender: UISlider) {
        PopD.text = "\(Int(sender.value)*1000)"
    }
    
    
    @IBAction func DoCompute(_ sender: UIButton) {
        
        
        
        
        var AX = Double(ValueAX.text!)!
        var AY = Double(ValueAY.text!)!
        var BX = Double(ValueBX.text!)!
        var BY = Double(ValueBY.text!)!
        var CX = Double(ValueCX.text!)!
        var CY = Double(ValueCY.text!)!
        var DX = Double(ValueDX.text!)!
        var DY = Double(ValueDY.text!)!
        
        var PA = Double(PopA.text!)!
        var PB = Double(PopB.text!)!
        var PC = Double(PopC.text!)!
        var PD = Double(PopD.text!)!
        
        
        
        
        
        environment = GarbageCalc(AX,BX,CX,DX,AY,BY,CY,DY,PA,PB,PC,PD)
        
        var comb = environment.computeVal()
        
        smlUn = comb.Avg
        x = comb.xcor
        y = comb.ycor
        
            }
        
    
    
    @IBAction func DoResetAll(_ sender: UIButton) {
        
    }
    
    
    @IBAction func DoReset(_ sender: UIButton) {
        ValueAX.text = "1"
        ValueBX.text = "1"
        ValueCX.text = "1"
        ValueDX.text = "1"
        ValueAY.text = "1"
        ValueBY.text = "1"
        ValueCY.text = "1"
        ValueDY.text = "1"
        
        PopA.text = "1000"
        PopB.text = "1000"
        PopC.text = "1000"
        PopD.text = "1000"
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        ValueAX.delegate = self
        ValueBX.delegate = self
        ValueCX.delegate = self
        ValueDX.delegate = self
        ValueAY.delegate = self
        ValueBY.delegate = self
        ValueCY.delegate = self
        ValueDY.delegate = self
        
         ValueAX.text = AXVal
         ValueBX.text = BXVal
         ValueCX.text = CXVal
         ValueDX.text = DXVal
         ValueAY.text = AYVal
         ValueBY.text = BYVal
         ValueCY.text = CYVal
         ValueDY.text = DYVal
        
        PopA.text = ppA
        PopB.text = ppB
        PopC.text = ppC
        PopD.text = ppD
        
        
        
        
        
        
        
        
//        var imageViewObject : UIImageView
//        
//        imageViewObject = UIImageView(frame:CGRect(0, 0, 600, 600))
//        
//        imageViewObject.image = UIImage(named:"garbage.png")
//        
//        self.view.addSubview(imageViewObject)
//        
//        self.view.sendSubviewToBack(imageViewObject)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       if textField == self.ValueAX
       {
        ValueAX.resignFirstResponder()
        }
        else if textField == self.ValueAY
       {
        ValueAY.resignFirstResponder()
        }
       else if textField == self.ValueBX
       {
        ValueBX.resignFirstResponder()
        }
       else if textField == self.ValueBY
       {
        ValueBY.resignFirstResponder()
        }
       else if textField == self.ValueCX
       {
        ValueCX.resignFirstResponder()
        }
       else if textField == self.ValueCY
       {
        ValueCY.resignFirstResponder()
        }
       else if textField == self.ValueDX
       {
        ValueDX.resignFirstResponder()
        }
       else if textField == self.ValueDY
       {
        ValueDY.resignFirstResponder()
        }
               return true
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        
        
        StepperAX.value = Double(ValueAX.text!)!
        StepperAY.value = Double(ValueAY.text!)!
        StepperBX.value = Double(ValueBX.text!)!
        StepperBY.value = Double(ValueBY.text!)!
        StepperCX.value = Double(ValueCX.text!)!
        StepperCY.value = Double(ValueCY.text!)!
        StepperDX.value = Double(ValueDX.text!)!
        StepperDY.value = Double(ValueDY.text!)!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destview : SecondView = segue.destination as! SecondView
        destview.xcor = x
        destview.ycor = y
        destview.average = smlUn
        
        destview.AXVal = ValueAX.text!
        destview.BXVal = ValueBX.text!
        destview.CXVal = ValueCX.text!
        destview.DXVal = ValueDX.text!
        destview.AYVal = ValueAY.text!
        destview.BYVal = ValueBY.text!
        destview.CYVal = ValueCY.text!
        destview.DYVal = ValueDY.text!
        
        destview.ppA = PopA.text!
        destview.ppB = PopB.text!
        destview.ppC = PopC.text!
        destview.ppD = PopD.text!
             
        
        
    }


}

