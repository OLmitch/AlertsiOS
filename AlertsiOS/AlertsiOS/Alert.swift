//
//  Alerts.swift
//  AlertsiOS
//
//  Created by Mitchell Downey on 7/23/15.
//  Copyright (c) 2015 OpinionLab. All rights reserved.
//

import UIKit

class Alert: NSObject {
    
    var name : String = String()
    var emailSubject : String = String()
    var dateTime : NSDate = NSDate()
    var markedAsRead : Bool = Bool()
    
    var feedback = [Feedback]()
    
    init(name : String, emailSubject : String, dateTime: NSDate, markedAsRead: Bool) {
        self.name = name
        self.emailSubject = emailSubject
        self.dateTime = dateTime
        self.markedAsRead = markedAsRead
    }
    
}