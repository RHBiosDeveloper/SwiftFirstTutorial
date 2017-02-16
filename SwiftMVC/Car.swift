//
//  Car.swift
//  SwiftMVC
//
//  Created by Bhavin Trivedi on 2/15/17.
//  Copyright © 2017 Bhavin Trivedi. All rights reserved.
//

import UIKit

class Car: NSObject {
    var model      : String?;
    var make       : String?;
    var horsepower : Int?;
    var photoUrl   : String?;
    
    
    init(model:String,make:String,horsepower:Int,photoUrl:String) {
        self.model = model;
        self.make  = make;
        self.horsepower = horsepower;
        self.photoUrl = photoUrl;
    }
}

