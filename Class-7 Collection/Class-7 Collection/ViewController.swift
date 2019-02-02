//
//  ViewController.swift
//  Class-7 Collection
//
//  Created by Brisk on 2/1/19.
//  Copyright © 2019 Brisk. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var FruitsCollectionView: UICollectionView!
    
    var fruit: [Friuts] = []
    //var fru = [Friuts]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.view.backgroundColor = UIColor.gray
        
        
        //    FruitsCollectionView.layer.borderColor = UIColor.lightGray.cgColor
        //   FruitsCollectionView.autoresizingMask = false
        
        
        let layout = self.FruitsCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    
        layout.minimumLineSpacing = 5
        layout.itemSize = CGSize(width: (self.FruitsCollectionView.frame.size.width - 15)/2, height: (self.FruitsCollectionView.frame.height)/3)
        print(layout.itemSize)
        
        
        fruit = createFruits()
        
        self.FruitsCollectionView.delegate = self
        self.FruitsCollectionView.dataSource = self
        
     //   navBarTItle()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navBarTItle()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fruit.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        
        //let cell = FruitsCollectionView.cellForItem(at: indexPath) // define index count on collection view
        
        
        let cell = FruitsCollectionView.dequeueReusableCell(withReuseIdentifier: "friutsCell", for: indexPath) as! FriutsCollectionViewCell
        
        cell.setImage(friuts: fruit[indexPath.item])
        
            
        
        
        
        // add a border
        //cell.layer.borderColor = UIColor.lightGray.cgColor
       // cell.layer.borderWidth = 1
       // cell.layer.cornerRadius = 8 // optional
        
        //        cell?.imageView.image = fruit[indexPath.item].image
        //        cell?.titleLabel.text = fruit[indexPath.item].title
        //        cell?.nameLabel.text = fruit[indexPath.item].name
        //        cell?.priceLabel.text = fruit[indexPath.item].price
        
        return cell
        
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        let details = storyboard?.instantiateViewController(withIdentifier: "detailsView") as! DetailsViewController
        
        
        details.details = fruit[indexPath.item]
        
        
    
        
        print(indexPath.item)
        
        
        let cell = FruitsCollectionView.cellForItem(at: indexPath)
        cell?.layer.borderColor = UIColor.lightGray.cgColor
        cell?.layer.borderWidth = 2
        
        self.navigationController?.pushViewController(details, animated: true)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
       
        let cell =  FruitsCollectionView.cellForItem(at: indexPath)
        cell?.layer.borderColor = UIColor.gray.cgColor
        cell?.layer.borderWidth = 0
        
    }
    
    
    
    
    
    // create an object
    // retrun array
    func createFruits() -> [Friuts] {
        
        var temp : [Friuts] = []
        
        let v1 = Friuts(id: 1, title: "Title one", name: "Aston Martin", image: #imageLiteral(resourceName: "TeslaS") , price: "11649820.00")
        let v2 = Friuts(id: 2, title: "Title two", name: "Tesla x", image: #imageLiteral(resourceName: "TeslaX") , price: "1198420.00")
        let v3 = Friuts(id: 3, title: "Title three", name: "Ferrari", image: #imageLiteral(resourceName: "Ferrari458") , price: "1264640.00")
        let v4 = Friuts(id: 4, title: "Title four", name: "Bugattiveyon", image: #imageLiteral(resourceName: "BugattiVeyron") , price: "9444120.00")
        let v5 = Friuts(id: 5, title: "Title five", name: "Tesla", image: #imageLiteral(resourceName: "Tesla3") , price: "1565620.00")
        let v6 = Friuts(id: 6, title: "Title seven", name: "Bugattiveyon", image: #imageLiteral(resourceName: "BugattiVeyron") , price: "120000.00")
        
        temp.append(v1)
        temp.append(v2)
        temp.append(v3)
        temp.append(v4)
        temp.append(v5)
        temp.append(v6)
        
        return temp
    }
    
    
    
    func navBarTItle (){
        navigationController?.navigationBar.tintColor = UIColor.blue
        navigationController?.navigationBar.barTintColor = UIColor.red
    }
    
}

