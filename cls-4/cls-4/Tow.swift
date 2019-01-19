//
//  Tow.swift
//  cls-4
//
//  Created by Brisk on 1/19/19.
//  Copyright © 2019 Brisk. All rights reserved.
//

import UIKit

class Tow: UIViewController {

    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var email: UILabel!
    
    var nameField = String()
    var emailField = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        
        name.text = nameField
        email.text = emailField
        
    }

}
