//
//  DetailsViewController.swift
//  Class-7 Collection
//
//  Created by Brisk on 2/1/19.
//  Copyright © 2019 Brisk. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var details : Friuts?
    
    
    @IBOutlet weak var img: UIImageView!
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var name: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        img.image = details?.image
        
        
    }

    override func viewWillAppear(_ animated: Bool) {
        navBarTItle()
    }
    
    
    func navBarTItle (){
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.barTintColor = UIColor.blue
    }
    
    
}
