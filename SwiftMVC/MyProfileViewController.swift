//
//  MyProfileViewController.swift
//  SwiftMVC
//
//  Created by Hitesh Rasal on 16/02/17.
//  Copyright © 2017 Bhavin Trivedi. All rights reserved.
//

import UIKit

class MyProfileViewController: UIViewController {
    var profileDetails : LoginModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Profile Details : \(profileDetails)")
        let getGlobalObjectVC = self.storyboard?.instantiateViewController(withIdentifier: "GetGlobalObjectVC") as! GetGlobalObjectVC
        self.navigationController?.pushViewController(getGlobalObjectVC, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

