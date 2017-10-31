//
//  FieldEventsJSONLoader.swift
//  Field Survey
//
//  Created by Zach Hogan on 10/30/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import Foundation

class FieldEventsJSONLoader {
    
    class func load(fileName: String) -> [FieldEvent] {
        var observations = [FieldEvent]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            observations = FieldEventsJSONParser.parse(data)
        }
        
        return observations
    }
    
}
