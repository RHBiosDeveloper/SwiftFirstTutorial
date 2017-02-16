//
//  ViewController.swift
//  SwiftMVC
//
//  Created by Bhavin Trivedi on 2/15/17.
//  Copyright © 2017 Bhavin Trivedi. All rights reserved.
//

import UIKit




class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate  {

    @IBOutlet weak var tblView: UITableView!
//    var carDetailArray = [Array<Any>]()
    var carDetailArray = [Car]()
//      var carDetailArray = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.reloadData()
//        self.foo(x: nil) //Comment :  For guard concept
        let car = Car(model: "Swift", make:"Maruti" , horsepower: 2000, photoUrl: "http://auto.ferrari.com/en_EN/wp-content/uploads/sites/5/2013/07/Ferrari-F12berlinetta.jpg")
     let car2 = Car(model: "Ciaz", make: "Maruti", horsepower: 1500, photoUrl: "http://auto.ferrari.com/en_EN/wp-content/uploads/sites/5/2013/07/Ferrari-F12berlinetta.jpg")
        carDetailArray.append(car)
        carDetailArray.append(car2)
//        carDetailArray.add(car)
//        carDetailArray.add(car2)
        
        
    }

/*    func foo (x : Int?) { //comment: For guard concept
    /*    if x! > 0
            print(x!)
        else
            print("You are empty");
        */
        guard let x=x,  x > 0 else {
            print("Empty value")
            return
        }
        print (x)
    }*/
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carDetailArray.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
         return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")//custom cell
         let car = carDetailArray[indexPath.row]
//        let car = carDetailArray.object(at: indexPath.row) as! Car
        
        cell.textLabel?.text = car.model
//        let data = Data()
//        cell.imageView?.image = UIImage(data : data)
        
        
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

