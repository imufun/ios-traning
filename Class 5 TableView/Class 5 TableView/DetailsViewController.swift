//
//  DetailsViewController.swift
//  Class 5 TableView
//
//  Created by Brisk on 1/26/19.
//  Copyright © 2019 Brisk. All rights reserved.
//

import UIKit

import SafariServices

class DetailsViewController: UIViewController {
    
    var carData : Cars?
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var carTitle: UILabel!

    @IBOutlet weak var carDes: UILabel!
    @IBOutlet weak var btnView: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        
        img.image = carData?.imageLabel
        carTitle.text = carData?.titleLabel
        carDes.text = carData?.description
        
        
        
        btnView.layer.cornerRadius = btnView.frame.size.height/2
        btnView.setTitleColor(UIColor.white, for: .normal)
        btnView.setGradient(color1: Color.blue, color2: Color.green, color3: Color.red)
        btnView.layer.masksToBounds = true
        
        // uicolor.xyz
        
        
    }
    @IBAction func getVedio(_ sender: Any) {
   
        
    //method one
        
//        if let car = carData {
//            let url = URL(string: car.url)
//            let safari = SFSafariViewController(url: url!)
//            present(safari, animated: true, completion: nil)
//        }
//        
        
        // method tow
        if let url = URL(string: (carData?.url)!) {
            UIApplication.shared.open(url, options: [:])
        }
    }
 

}
