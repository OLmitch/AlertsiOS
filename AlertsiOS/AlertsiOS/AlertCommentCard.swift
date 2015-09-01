//
//  AlertCommentCard.swift
//  AlertsiOS
//
//  Created by Mitchell Downey on 8/31/15.
//  Copyright (c) 2015 Mitchell Downey. All rights reserved.
//

import UIKit

class AlertCommentCard: NSObject {
    
    var name : String = String()
    var emailSubject : String = String()
    var dateTime : NSDate = NSDate()
    var markedAsRead : Bool = Bool()
    
    var feedback : [Feedback]? = [Feedback]()
    
    init(name : String, emailSubject : String, dateTime: NSDate, markedAsRead: Bool) {
        self.name = name
        self.emailSubject = emailSubject
        self.dateTime = dateTime
        self.markedAsRead = markedAsRead
    }
    
}