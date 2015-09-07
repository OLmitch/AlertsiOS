//
//  FeedbackViewController.swift
//  AlertsiOS
//
//  Created by Mitchell Downey on 9/2/15.
//  Copyright (c) 2015 Mitchell Downey. All rights reserved.
//

import UIKit

class FeedbackViewController: UIViewController {
    
    var selectedAlert: Alert?
    var selectedFeedback: Feedback?
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var alertEmailSubject: UILabel!
    @IBOutlet weak var alertDateTime: UILabel!
    
    @IBOutlet weak var feedbackOverallRating: UILabel!
    @IBOutlet weak var feedbackComments: UILabel!
    @IBOutlet weak var feedbackDateTime: UILabel!
    @IBOutlet weak var feedbackCurrentURL: UILabel!
    @IBOutlet weak var feedbackReferer: UILabel!
    @IBOutlet weak var feedbackCustomVars: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
//        alertEmailSubject.text = selectedFeedback!.comments
//        alertDateTime.text = "07/23/15 - 7:30 PM to 07/23/15 11:45 PM"
        
        var boldAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(14)]
        
        var overallRatingLabel = NSMutableAttributedString(string: "Overall Rating: ", attributes: boldAttribute)
        var overallRatingText = NSMutableAttributedString(string: String(selectedFeedback!.overallRating))
        overallRatingLabel.appendAttributedString(overallRatingText)
        feedbackOverallRating.attributedText = overallRatingLabel
        
        var commentsLabel = NSMutableAttributedString(string: "Comments: ", attributes: boldAttribute)
        var commentsText = NSMutableAttributedString(string: selectedFeedback!.comments)
        commentsLabel.appendAttributedString(commentsText)
        feedbackComments.attributedText = commentsLabel
        
        var dateTimeLabel = NSMutableAttributedString(string: "Date/Time: ", attributes: boldAttribute)
        var dateTimeText = NSMutableAttributedString(string: "07/23/15 - 7:30 PM")
        dateTimeLabel.appendAttributedString(dateTimeText)
//        var dateTimeText = NSMutableAttributedString(string: selectedFeedback!.dateTime)
        feedbackDateTime.attributedText = dateTimeLabel
        
        var currentURLLabel = NSMutableAttributedString(string: "CurrentURL: ", attributes: boldAttribute)
        var currentURLText = NSMutableAttributedString(string: selectedFeedback!.currentURL.absoluteString!)
        currentURLLabel.appendAttributedString(currentURLText)
        feedbackCurrentURL.attributedText = currentURLLabel
        
        var refererLabel = NSMutableAttributedString(string: "Referer: ", attributes: boldAttribute)
        var refererText = NSMutableAttributedString(string: selectedFeedback!.referer.absoluteString!)
        refererLabel.appendAttributedString(refererText)
        feedbackReferer.attributedText = refererLabel

        var customVarsFullLabel = NSMutableAttributedString(string: "Custom Variables \n", attributes: boldAttribute)
        var objects = selectedFeedback!.customVars.allKeys as! [String]
        objects = (selectedFeedback!.customVars.allKeys as! [String]).sorted(<)
        for var i = 0; i < objects.count; ++i {
            var customVarLabel = NSMutableAttributedString(string: objects[i] + ": ", attributes: boldAttribute)
            var customVarText = NSMutableAttributedString(string: selectedFeedback!.customVars[objects[i]] as! String + "\n")
            customVarLabel.appendAttributedString(customVarText)
            customVarsFullLabel.appendAttributedString(customVarLabel)
        }
        feedbackCustomVars.attributedText = customVarsFullLabel
        
//        for customVar in selectedFeedback!.customVars {
//            println(customVar)
//            
//        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
