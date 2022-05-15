//
//  ViewController.swift
//  afternoonteaOrder
//
//  Created by Yoga on 2022/5/15.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var flavorSegment: UISegmentedControl!
    @IBOutlet weak var milkteaSwitch: UISwitch!
    @IBOutlet weak var sugarSlider: UISlider!
    @IBOutlet weak var iceSlider: UISlider!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var sugarLabel: UILabel!
    @IBOutlet weak var iceLabel: UILabel!
    
    var eggcake = "經典原味"
    var milktea = ""
   // var sugar = "無糖"
   // var ice = "去冰"
    var order = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func orderName(_ sender: UITextField){
        
    }
    
    @IBAction func changeFlavor(_ sender: UISegmentedControl) {
        if flavorSegment.selectedSegmentIndex==0{
            eggcake="經典原味"
            
        }else if flavorSegment.selectedSegmentIndex==1{
            eggcake="奶香可可"
        }else{
            eggcake="邪惡起司"
            
        }
    }
    
    
    @IBAction func yesOrnoSwitch(_ sender: UISwitch) {
        if milkteaSwitch.isOn{
            
            sugarSlider.isHidden=false
            iceSlider.isHidden=false
            milktea="加購奶茶"
        }else{
            sugarSlider.isHidden=true
            iceSlider.isHidden=true
            milktea=""
        }
    }
    
    @IBAction func changeSugar(_ sender: UISlider) {
        sugarSlider.value.round()
        if sugarSlider.value==1{
            sugarLabel.text="無糖"
            
        }else if sugarSlider.value==2{
            sugarLabel.text="微糖"
        }else if sugarSlider.value==3{
            sugarLabel.text="半糖"
        }
        else if sugarSlider.value==4{
            sugarLabel.text="少糖"
        }else{
            sugarLabel.text="全糖"
        }
        
    }
    
    @IBAction func changeIce(_ sender: UISlider) {
        iceSlider.value.round()
        if iceSlider.value==1{
            iceLabel.text="去冰"
        }else if iceSlider.value==2{
            iceLabel.text="微冰"
        }else if iceSlider.value==3{
            iceLabel.text="少冰"
        }else{
            iceLabel.text="正常冰"
        }
        
    }
    
    
    @IBAction func orderMeal(_ sender: Any) {
        let name = nameTextField.text!
        if name == ""{
            resultLabel.text="請輸入完整訂購資訊"
        }else if milkteaSwitch.isOn==false{
            resultLabel.text=name+"今晚想來點：\n\n"+eggcake+"雞蛋糕\n\n"
        }
        else{
            resultLabel.text=name+"今晚想來點：\n\n"+eggcake+"雞蛋糕\n\n"+milktea+sugarLabel.text!+iceLabel.text!
            
        }
            
    }
    
    @IBAction func clearAll(_ sender: Any) {
        nameTextField.text=""
        flavorSegment.selectedSegmentIndex=0
        milkteaSwitch.isOn=false
        sugarSlider.isHidden=true
        iceSlider.isHidden=true
        resultLabel.text=""
    }
    
}

