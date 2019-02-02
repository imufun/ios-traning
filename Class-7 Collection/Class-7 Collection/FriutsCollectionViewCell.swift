
//
//  FriutsCollectionViewCell.swift
//  Class-7 Collection
//
//  Created by Brisk on 2/1/19.
//  Copyright © 2019 Brisk. All rights reserved.
//

import UIKit

class FriutsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    
    func setImage(friuts: Friuts) {
        imageView.image = friuts.image
        titleLabel.text = friuts.title
        nameLabel.text  = friuts.name
        priceLabel.text = friuts.price
    }
    
    
    
    
}
