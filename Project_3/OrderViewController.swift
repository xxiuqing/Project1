//
//  OrderViewController.swift
//  Project_2
//
//  Created by SWUCOMPUTER on 2018. 4. 16..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {
    
    var orderMenu: String = ""
    var orderBread: String = ""
    var orderTopping: String = ""
    var orderVege: String = ""
    var orderSauce: String = ""
    var orderSet: String = ""
    var orderNick: String = ""
    
    @IBOutlet var nickInfo: UILabel!
    @IBOutlet var orderInfo: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.

        nickInfo.text = self.orderNick + " 고객님!"
        
        orderInfo.text = "주문메뉴 : " + self.orderMenu + "\n빵 : " + self.orderBread + "\n추가 토핑 : " + self.orderTopping + "\n제외할 야채 :  " + self.orderVege + "\n소스 : " + self.orderSauce + "\n" + self.orderSet + "(으)로 주문하시겠습니까?"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
}
