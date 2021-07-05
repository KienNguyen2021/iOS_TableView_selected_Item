//
//  ViewController.swift
//  95_tableView_PlanetVeracity
//
//  Created by Kien Nguyen on 2021-07-05.
//

import UIKit

// Add 2 more protocals
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var foodTableView: UITableView!
    
    // Create a dynamic data---> Array :
    
    var foods = ["Rice","Wheat","Corn","Patato","Meat","Vegetable","Fruits","Fish"]
    
    
    var totalItem = 0   // Start to count items selected
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Assign 2 protocal here :
        
        foodTableView.delegate = self
        foodTableView.dataSource = self
    }
    
    
    // Add function (Method) : DidSelectRowAt :
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
       //  print(" You have chosen this cell ")    // print out a text in the console
        
        
        // print out an array name in the console :
        
        print(" You selected this food :\(foods[indexPath.row]) ")
        
        
        totalItem += 1    // Count how many time you pick
        
        print(" Total items you selected are : \(totalItem)")
       }
    
    
    
    //Need another method :NumberOfRowsInSection :
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
       //  return 6  // 6 row
        
      //  for array data :
        
        return foods.count
        
    }
    
    
    //Add another function(Method) : CellForRowAt :
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = foodTableView.dequeueReusableCell(withIdentifier: "foodCell", for : indexPath)
        
        // Add some text for cell :
        
      //  cell.textLabel?.text = " I am a row cell"    // This is static data
        
       // return cell
        
       // for Array Data :
        
        cell.textLabel?.text = foods[indexPath.row]
        return cell
    }
    
}


