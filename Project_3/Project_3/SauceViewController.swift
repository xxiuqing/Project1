//
//  SauceViewController.swift
//  Project_3
//
//  Created by SWUCOMPUTER on 2018. 4. 18..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class SauceViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    
    @IBOutlet var saucePicker: UIPickerView!
    @IBOutlet var singleSet: UISegmentedControl!
    @IBOutlet var nickName: UITextField!
    var selectedSegmentIndex: Int!
    
    var order2Menu: String = ""
    var order2Bread: String = ""
    var order2Topping: String = ""
    var order2Vege: String = ""
    
    var sauce: String = ""
    var nick: String = ""
    var segSingleSet: String = "단품"
    
    let sauceArray: [String] = ["랜치", "스위트 어니언", "스위트 칠리", "바비큐", "핫 칠리", "머스타드"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sauceArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row:Int, forComponent component: Int) -> String? {
        return sauceArray[row]
    }
    
    @IBAction func valueChanged(_ sender: UISegmentedControl) {
        self.segSingleSet = sender.titleForSegment(at: sender.selectedSegmentIndex)!
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "to5thView" {
            sauce = sauceArray[self.saucePicker.selectedRow(inComponent: 0)]
            
            let destVC = segue.destination as! OrderViewController
            destVC.orderMenu = self.order2Menu
            destVC.orderBread = self.order2Bread
            destVC.orderTopping = self.order2Topping
            destVC.orderVege = self.order2Vege
            destVC.orderSauce = sauce
            destVC.orderSet = segSingleSet
            
            if let getNick = nickName.text {
                nick = getNick
            }
            destVC.orderNick = nick
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
}

