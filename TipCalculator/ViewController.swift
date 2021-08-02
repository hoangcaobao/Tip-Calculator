//
//  ViewController.swift
//  TipCalculator
//
//  Created by Hoang Cao Bao on 02/08/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
        
        
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
        self.title="Tip Calculator"
        let defaults=UserDefaults.standard
        tipControl.setTitle((defaults.string(forKey: "tip1") ?? "15") + "%" , forSegmentAt:0)
        tipControl.setTitle((defaults.string(forKey: "tip2") ?? "18") + "%", forSegmentAt:1)
        tipControl.setTitle((defaults.string(forKey: "tip3") ?? "20") + "%", forSegmentAt:2)
        let color=defaults.integer(forKey: "color")
        if(color==0){
            self.view.backgroundColor=UIColor.white
        }
        if(color==1){
            self.view.backgroundColor=UIColor.red
        }
        if(color==2){
            self.view.backgroundColor=UIColor.orange
        }
        if(color==3){
            self.view.backgroundColor=UIColor.yellow
        }
        if(color==4){
            self.view.backgroundColor=UIColor.green
        }
        if(color==5){
            self.view.backgroundColor=UIColor.blue
        }
        if(color==6){
            self.view.backgroundColor=UIColor.purple
        }
       
       

    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        print("view did appear")
//        self.title="Tip Calculator"
//        let defaults=UserDefaults.standard
//        tipControl.setTitle((defaults.string(forKey: "tip1") ?? "15") + "%" , forSegmentAt:0)
//        tipControl.setTitle((defaults.string(forKey: "tip2") ?? "18") + "%", forSegmentAt:1)
//        tipControl.setTitle((defaults.string(forKey: "tip3") ?? "20") + "%", forSegmentAt:2)
//        let color=defaults.integer(forKey: "color")
//        if(color==0){
//            self.view.backgroundColor=UIColor.white
//        }
//        if(color==1){
//            self.view.backgroundColor=UIColor.red
//        }
//        if(color==2){
//            self.view.backgroundColor=UIColor.orange
//        }
//        if(color==3){
//            self.view.backgroundColor=UIColor.yellow
//        }
//        if(color==4){
//            self.view.backgroundColor=UIColor.green
//        }
//        if(color==5){
//            self.view.backgroundColor=UIColor.blue
//        }
//        if(color==6){
//            self.view.backgroundColor=UIColor.purple
//        }
//       
//
//    }
    




    @IBAction func calculateTip(_ sender: Any) {
        let bill=Double(billAmountTextField.text!) ?? 0
        
        var tipPercentage : [Double] = []
        let defaults=UserDefaults.standard
        tipPercentage.append(Double(defaults.string(forKey: "tip1") ?? "15") ?? 0)
        tipPercentage.append(Double(defaults.string(forKey: "tip2") ?? "18") ?? 0)
        tipPercentage.append(Double(defaults.string(forKey: "tip3") ?? "20") ?? 0)
        
        let tip = bill*tipPercentage[tipControl.selectedSegmentIndex]/100
        let total=bill+tip
        tipAmountLabel.text=String(format:"$%.2f", tip)
        totalLabel.text=String(format:"$%.2f", total)
        
    }
    

}

