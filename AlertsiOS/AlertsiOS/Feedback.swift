//
//  Feedback
//  AlertsiOS
//
//  Created by Mitchell Downey on 8/31/15.
//  Copyright (c) 2015 OpinionLab. All rights reserved.
//

import UIKit

class Feedback: NSObject {
    
    var ccid : Int = Int()
    var dateTime : NSDate = NSDate()
    var prev : NSURL = NSURL()
    var referer : NSURL = NSURL()
    var currentURL : NSURL = NSURL()
    var oCodeVersion : String = String()
    var customVars = NSDictionary()
    var overallRating : Int = Int()
    var comments : String = String()
    
    init(ccid : Int, dateTime : NSDate, prev : NSURL, referer : NSURL, currentURL : NSURL, oCodeVersion : String, customVars : NSDictionary, overallRating : Int, comments : String) {
        self.ccid = ccid
        self.dateTime = dateTime
        self.prev = prev
        self.referer = referer
        self.currentURL = currentURL
        self.oCodeVersion = oCodeVersion
        self.customVars = customVars
        self.overallRating = overallRating
        self.comments = comments
    }
    
}