//
//  MirrorAPIViewController.swift
//  SwiftMVC
//
//  Created by Bhavin Trivedi on 2/15/17.
//  Copyright © 2017 Bhavin Trivedi. All rights reserved.
//

import UIKit

class MirrorAPIViewController: UIViewController {
//    var loginModel : LoginModel! //Object datatype declared in ApDelegate for global access throughout project
//    var loginModel : LoginModel? //Object datatype declaration
//   var appDelegate : AppDelegate! // THis is assigning datatype to variable
   // var appDelegate = AppDelegate() // Object initialization
    
    @IBAction func loginTapped(_ sender: Any) {
        let urlReq = "http://conference.pankanis.dc:8210/api/v1/login";
        
        self.APICall(urlStr: urlReq);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    
    func APICall (urlStr : String) {
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration)
        let urlstring = URL(string: urlStr)!
        var request = URLRequest(url: urlstring)
        request.httpMethod = "POST"
        let postBody = ["userName":"nagabhushana.v_pn","password":"VsUWe1DOTmIAoypw2udQ2Q=="]
        
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
         request.httpBody = try? JSONSerialization.data(withJSONObject: postBody, options: [])
        // request.setValue("Bearer \(Stormpath.sharedSession.accessToken ?? "")", forHTTPHeaderField: "Authorization")
        
        let task = session.dataTask(with: request, completionHandler: {
            (data, response, error) in
            
            if error != nil {
                
                print(error!.localizedDescription)
                
            } else {
                do {
                    if let json = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? NSDictionary
                    {
                        print("json responce is \(json)")
                        let dict = json.value(forKey: "data") as! NSDictionary
                      /*// local login model object
                      self.loginModel   = LoginModel(FirstName:dict.value(forKey: "FirstName") as! String , UserID: dict.value(forKey: "UserID") as! Int, dictionary:dict.value(forKey: "designationDetails") as! NSDictionary)
                        print(self.loginModel)
                        print("\(self.loginModel.firstName)")
                        print("\(self.loginModel.dictionary)")
                        
                        print("service responce is \(response)")
                    let myprofileVC = self.storyboard?.instantiateViewController(withIdentifier: "MyProfileViewController") as! MyProfileViewController
                        myprofileVC.profileDetails = self.loginModel
                        DispatchQueue.main.async {
                            self.navigationController?.pushViewController(myprofileVC, animated: true)
                        }*/
                        self.appDelegate.loginModel   = LoginModel(FirstName:dict.value(forKey: "FirstName") as! String , UserID: dict.value(forKey: "UserID") as! Int, dictionary:dict.value(forKey: "designationDetails") as! NSDictionary)
                        print(self.appDelegate.loginModel)
                        print("\(self.appDelegate.loginModel.firstName)")
                        print("\(self.appDelegate.loginModel.dictionary)")
                        
                        print("service responce is \(response)")
                        let myprofileVC = self.storyboard?.instantiateViewController(withIdentifier: "MyProfileViewController") as! MyProfileViewController
                        myprofileVC.profileDetails = self.appDelegate.loginModel
                        DispatchQueue.main.async {
                            self.navigationController?.pushViewController(myprofileVC, animated: true)
                        }
                    }
                    
                } catch {
                    print("error in JSONSerialization")
                }
                
            }
        })
        task.resume()
    
    }

}
