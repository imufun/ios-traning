//
//  SecondScreen.swift
//  Class 4
//
//  Created by Brisk on 1/19/19.
//  Copyright © 2019 Brisk. All rights reserved.
//

import UIKit

class SecondScreen: UIViewController {

   
    @IBOutlet weak var getNameLabel: UILabel!
    @IBOutlet weak var getEmailLabel: UILabel!
    
    
    var name = String()
    var email = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        getNameLabel.text = name
        getEmailLabel.text = email
    }

    
}
