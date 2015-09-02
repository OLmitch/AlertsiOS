//
//  Feedback
//  AlertsiOS
//
//  Created by Mitchell Downey on 8/31/15.
//  Copyright (c) 2015 Mitchell Downey. All rights reserved.
//

import UIKit

class Feedback: NSObject {
    
    var overallRating : Int = Int()
    var comments : String = String()
    var dateTime : NSDate = NSDate()
    var reportedURL : NSURL = NSURL()
    
    init(overallRating : Int, comments : String, dateTime: NSDate, reportedURL: NSURL) {
        self.overallRating = overallRating
        self.comments = comments
        self.dateTime = dateTime
        self.reportedURL = reportedURL
    }
    
}