//
//  ViewController.swift
//  cls-4
//
//  Created by Brisk on 1/19/19.
//  Copyright © 2019 Brisk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TF1: UITextField!
    @IBOutlet weak var TF2: UITextField!
    
    @IBOutlet weak var first: UILabel!
    
    
    var T1Value = String()
    var T2value = String()
    
    
    var datapass = "sdff"
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        first.text = datapass
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func login(_ sender: Any) {
        T1Value = TF1.text!
        T2value = TF2.text!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let DVC = segue.destination as! Tow
        DVC.nameField = T1Value
        DVC.emailField = T2value
        
    }
    
    
    
    @IBAction func unWindToFirst  (_ sender: UIStoryboardSegue){
                
    }

}

