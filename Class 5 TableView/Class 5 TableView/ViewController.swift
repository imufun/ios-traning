//
//  ViewController.swift
//  Class 5 TableView
//
//  Created by Brisk on 1/25/19.
//  Copyright © 2019 Brisk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
   // var car1 = Cars(image: #imageLiteral(resourceName: "img-1"), title: String("THis is title"))
    
    
    var car : [Cars] = []
    
  

    override func viewDidLoad() {
        super.viewDidLoad()
         
        
        car  =  createArray()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func createArray() -> [Cars]{
        var tempArray : [Cars] = []
        
        let v1 = Cars(image: #imageLiteral(resourceName: "img-1"), title: "This is Test Data1")
        let v2 = Cars(image: #imageLiteral(resourceName: "img-2"), title: "This is Test Data1")
        let v3 = Cars(image: #imageLiteral(resourceName: "img-3"), title: "This is Test Data1")
        let v4 = Cars(image: #imageLiteral(resourceName: "img-5"), title: "This is Test Data1")
        let v5 = Cars(image: #imageLiteral(resourceName: "img-9"), title: "This is Test Data1")
        
        tempArray.append(v1)
        tempArray.append(v2)
        tempArray.append(v3)
        tempArray.append(v4)
        tempArray.append(v5)
        
        return tempArray
        
    }
    
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return car.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
     
        let v = car[indexPath.row]
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell") as! TableViewCell
        
       // cell.TitleImage.image? = v.imageLabel
       // cell.TitleLabel.text? = v.titleLabel
        
        
        cell.setcar(car: v)
        
        
        return cell
        
        
        
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}






