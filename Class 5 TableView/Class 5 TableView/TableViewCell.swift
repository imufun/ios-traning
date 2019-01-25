//
//  TableViewCell.swift
//  Class 5 TableView
//
//  Created by Brisk on 1/25/19.
//  Copyright © 2019 Brisk. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    
    
    
    @IBOutlet weak var TitleImage: UIImageView!
    
    @IBOutlet weak var TitleLabel: UILabel!
    
    
    func setcar(car: Cars) {
        TitleImage.image = car.imageLabel
        TitleLabel.text = car.titleLabel         
    }
    
}
