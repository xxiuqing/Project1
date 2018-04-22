//
//  MenuViewController.swift
//  Project_3
//
//  Created by SWUCOMPUTER on 2018. 4. 18..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet var egmy: UIButton!
    @IBOutlet var itbmt: UIButton!
    @IBOutlet var mtball: UIButton!
    @IBOutlet var steakcheese: UIButton!
    @IBOutlet var roastc: UIButton!
    @IBOutlet var avocado: UIButton!
    
    var menu: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func menuSelect(_ sender: UIButton) {
            if sender == egmy {
                menu = "에그마요" }
            else if sender == itbmt {
                menu = "이탈리안 비엠티" }
            else if sender == mtball {
                menu = "미트볼" }
            else if sender == steakcheese {
                menu = "스테이크 & 치즈"   }
            else if sender == roastc {
                menu = "로스트 치킨" }
            else {
                menu = "터키 베이컨 아보카도"   }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "to3rdView" {
            let destVC = segue.destination as! BreadViewController
            destVC.order1Menu = menu
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
}
