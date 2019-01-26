//
//  Cars.swift
//  Class 5 TableView
//
//  Created by Brisk on 1/25/19.
//  Copyright © 2019 Brisk. All rights reserved.
//

import Foundation
import UIKit
class Cars {
    
    var imageLabel : UIImage
    var titleLabel : String
    var url : String
    var description : String
    
     
    
    init(image: UIImage, title: String, url: String, description: String) {
        self.imageLabel = image
        self.titleLabel = title
        self.url = url
        self.description = description
    }
}
