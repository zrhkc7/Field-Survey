//
//  FieldEventsJSONParser.swift
//  Field Survey
//
//  Created by Zach Hogan on 10/30/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import Foundation

class FieldEventsJSONParser {
    
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [FieldEvent] {
        var fieldEvents = [FieldEvent]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok" {
            if let observations = root["observations"] as? [Any] {
                for observation in observations {
                    if let observation = observation as? [String: String] {
                        if let field = observation["classification"],
                           let title = observation["title"],
                           let description = observation["description"],
                           let dateString = observation["date"],
                           let date = dateFormatter.date(from: dateString) {
                            
                            if let fieldEvent = FieldEvent(field: field, title: title, description: description, date: date) {
                                
                                fieldEvents.append(fieldEvent)
                            }
                        }
                    }
                }
            }
        }
        
        return fieldEvents
    }
    
    
    
    
}
