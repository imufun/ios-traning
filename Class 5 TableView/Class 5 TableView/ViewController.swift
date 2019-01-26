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
        
        let v1 = Cars(image: #imageLiteral(resourceName: "img-1"), title: "This is Test Data1", url: "https://www.youtube.com/watch?v=U0D3AOldjMU", description: "One thing I hate about UITableViews are when you select a row, it doesn’t deselect after letting go of the row.")
        let v2 = Cars(image: #imageLiteral(resourceName: "img-2"), title: "This is Test Data1 2",url: "https://www.youtube.com/watch?v=U0D3AOldjMU", description: "One thing I hate about UITableViews are when you select a row, it doesn’t deselect after letting go of the row.")
        let v3 = Cars(image: #imageLiteral(resourceName: "img-3"), title: "This is Test Data1 33 ",url: "https://www.youtube.com/watch?v=U0D3AOldjMU", description: "One thing I hate about UITableViews are when you select a row, it doesn’t deselect after letting go of the row.")
        let v4 = Cars(image: #imageLiteral(resourceName: "img-5"), title: "This is Test Data1",url: "https://www.youtube.com/watch?v=U0D3AOldjMU", description: "One thing I hate about UITableViews are when you select a row, it doesn’t deselect after letting go of the row.")
        let v5 = Cars(image: #imageLiteral(resourceName: "img-9"), title: "This is Test Data1",url: "https://www.youtube.com/watch?v=U0D3AOldjMU", description: "One thing I hate about UITableViews are when you select a row, it doesn’t deselect after letting go of the row.")
        
        tempArray.append(v1)
        tempArray.append(v2)
        tempArray.append(v3)
        tempArray.append(v4)
        tempArray.append(v5)
        
        return tempArray
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "details" {
            let dvc = segue.destination as! DetailsViewController
            dvc.carData = sender as? Cars
        }
    }
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return car.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        let vb = car[indexPath.row]
        
        performSegue(withIdentifier: "details", sender: vb)
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let v = car[indexPath.row]
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell") as! TableViewCell
        
        // cell.TitleImage.image? = v.imageLabel
        // cell.TitleLabel.text? = v.titleLabel
        
        
        cell.setcar(car: v)
        
        
        return cell
        
    }
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        
        let itemToMove = car[sourceIndexPath.row]
        car.remove(at: sourceIndexPath.row)
        car.insert(itemToMove, at: destinationIndexPath.row)
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}






