//
//  Cars.swift
//  cars-movie-app
//
//  Created by yekta on 6.10.2023.
//

import Foundation
import UIKit

class Cars{
    
    var name : String = ""
    var role : String = ""
    var image = UIImage()
    init(name: String, role: String, image: UIImage = UIImage()) {
        self.name = name
        self.role = role
        self.image = image
    }
    
}
