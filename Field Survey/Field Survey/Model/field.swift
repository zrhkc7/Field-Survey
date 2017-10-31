//
//  field.swift
//  Field Survey
//
//  Created by Zach Hogan on 10/29/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import UIKit

enum Field: String {
    case bird
    case amphibian
    case insect
    case mammal
    case plant
    case fish
    case reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "icon")
    }
}
