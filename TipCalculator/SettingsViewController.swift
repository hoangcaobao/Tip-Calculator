//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Hoang Cao Bao on 02/08/2021.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tip1Percentage: UITextField!
    @IBOutlet weak var tip2Percentage: UITextField!
    @IBOutlet weak var tip3Percentage: UITextField!
    @IBOutlet weak var backgroundColorControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated:Bool){
        super.viewWillAppear(animated)
        let defaults=UserDefaults.standard
        tip1Percentage.insertText(defaults.string(forKey: "tip1") ?? "15")
        tip2Percentage.insertText(defaults.string(forKey: "tip2") ?? "18")
        tip3Percentage.insertText(defaults.string(forKey: "tip3") ?? "20")
        let color=defaults.integer(forKey: "color")
        backgroundColorControl.selectedSegmentIndex=color
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
   

    @IBAction func changeBackgroundColor(_ sender: Any) {
        let defaults=UserDefaults.standard
        defaults.set(Int(backgroundColorControl.selectedSegmentIndex), forKey:"color")
        defaults.synchronize()
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
    
    @IBAction func tip1Change(_ sender: Any) {
        let defaults=UserDefaults.standard
        defaults.set(String(tip1Percentage.text!),forKey: "tip1" )
        defaults.synchronize()
        
    }
    
    @IBAction func tip2Change(_ sender: Any) {
        let defaults=UserDefaults.standard
        defaults.set(String(tip2Percentage.text!),forKey: "tip2")
        defaults.synchronize()
    }
    
    @IBAction func tip3Change(_ sender: Any) {
        let defaults=UserDefaults.standard
        defaults.set(String(tip3Percentage.text!), forKey: "tip3")
        defaults.synchronize()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
