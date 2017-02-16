//
//  LoginModel.swift
//  SwiftMVC
//
//  Created by Bhavin Trivedi on 2/15/17.
//  Copyright © 2017 Bhavin Trivedi. All rights reserved.
//

import UIKit
    /*CreatedBy = "nikita.suryavanshi";
    CreatedOn = "2015-03-16T14:32:44.090Z";
    Email = "nagabhushana.vaddi@pankanis.com";
    EmpID = 1400;
    FirstName = Nagabhushana;
    IsActive = 1;
    LastLoggedIn = "2017-02-15T19:16:14.183Z";
    LastName = Vaddi;
    LoggedIn = 1;
    ModifiedBy = "nikita.suryavanshi";
    ModifiedOn = "2015-03-16T14:32:44.090Z";
    UserID = 1332;
    designationDetails =     {
        designationCode = DSGN199;
        designationName = "iOS Developer";
        designationid = 206;
    };*/

class DesignationDetails: NSObject {
    var desCode :  String?
    var desName : String?
    init(desCode : String, desName : String) {
        self.desCode = desCode
        self.desName = desName
    }
}
class LoginModel: NSObject {
    var firstName : String!
    var UserID : Int!
    var dictionary = NSDictionary()
//    var designationDetails : DesignationDetails
    
    init(FirstName : String, UserID : Int, dictionary : NSDictionary) {
        self.firstName = FirstName
        self.UserID = UserID
        self.dictionary = dictionary as! NSDictionary
        
        
    }
}


