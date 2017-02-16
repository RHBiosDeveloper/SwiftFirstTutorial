//
//  GetGlobalObjectVC.swift
//  SwiftMVC
//
//  Created by Hitesh Rasal on 16/02/17.
//  Copyright © 2017 Bhavin Trivedi. All rights reserved.
//

import UIKit

class GetGlobalObjectVC: UIViewController {

    @IBOutlet weak var lblFistName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblFistName.text = self.appDelegate.loginModel.firstName
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
