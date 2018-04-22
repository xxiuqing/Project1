//
//  BreadViewController.swift
//  Project_3
//
//  Created by SWUCOMPUTER on 2018. 4. 18..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class BreadViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    
    @IBOutlet var breadPicker: UIPickerView!
    @IBOutlet var toppingPicker: UIPickerView!
    @IBOutlet var vegeTextField: UITextField!
    
    var order1Menu: String = ""
    var bread: String = ""
    var topping: String = ""
    var vegetable: String = ""
    
    let breadArray: [String] = ["화이트", "하티", "파마산 오레가노", "위트", "허니오트", "플랫"]
    let toppingArray: [String] = ["없음","에그마요", "아보카도", "베이컨", "페퍼로니", "더블치즈"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        if pickerView == breadPicker {
            return 1
        }
        else {
            return 1
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == breadPicker {
            return breadArray.count
        }
        else {
            return toppingArray.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row:Int, forComponent component: Int) -> String? {
        if pickerView == breadPicker {
            return breadArray[row]
        }
        else {
            return toppingArray[row]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "to4thView" {
            bread = breadArray[self.breadPicker.selectedRow(inComponent: 0)]
            topping = toppingArray[self.toppingPicker.selectedRow(inComponent: 0)]
            
            let destVC = segue.destination as! SauceViewController
            destVC.order2Menu = self.order1Menu
            destVC.order2Bread = self.bread
            destVC.order2Topping = self.topping
            
            if let getVege = vegeTextField.text {
                vegetable = getVege
            }
            destVC.order2Vege = self.vegetable
        }
    }
}


