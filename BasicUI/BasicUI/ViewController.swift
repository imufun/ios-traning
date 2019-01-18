//
//  ViewController.swift
//  BasicUI
//
//  Created by Brisk on 1/18/19.
//  Copyright © 2019 Brisk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var first: UIButton!
    
    @IBOutlet var button: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //first.layer.cornerRadius = 50
        
        
        for btn in button {
            btn.layer.cornerRadius = 10
        }
        
    }

   
    
    override func viewWillAppear(_ animated: Bool) {
         
    }

}

