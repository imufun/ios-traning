//
//  Third.swift
//  cls-4
//
//  Created by Brisk on 1/19/19.
//  Copyright © 2019 Brisk. All rights reserved.
//

import UIKit

class Third: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
 
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        let desValue = segue.destination as! ViewController
        
        desValue.datapass = "hahaha"
    }
   

}
