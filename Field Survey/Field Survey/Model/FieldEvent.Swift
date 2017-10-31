//
//  FieldEvent.Swift
//  Field Survey
//
//  Created by Zach Hogan on 10/29/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import Foundation

struct FieldEvent {
    let field: Field
    let title: String
    let description: String
    let date: Date
    
    init(field: Field, title: String, description: String, date: Date) {
        self.field = field
        self.title = title
        self.description = description
        self.date = date
    }
    
    init?(fieldName: String, title: String, description: String, date: Date) {
        if let field = Field(rawValue: fieldName) {
            self.init(field: field, title: title, description: description, date: date)
        } else {
            return nil
        }
    }
}
