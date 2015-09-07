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
    
    @IBOutlet weak var textView: UITextView!
    
    func addShareSaveButtonsToRightNav() {
        let buttonSave = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        buttonSave.frame = CGRectMake(0, 0, 36, 40)
        buttonSave.setTitle("Save", forState: UIControlState.Normal)
        buttonSave.addTarget(self, action: "saveButtonAction", forControlEvents: UIControlEvents.TouchUpInside)
        let rightBarButtonSave = UIBarButtonItem(customView: buttonSave)
        
        let buttonShare = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        buttonShare.frame = CGRectMake(60, 0, 60, 40)
        buttonShare.setTitle("Share", forState: UIControlState.Normal)
        buttonShare.addTarget(self, action: "shareButtonAction", forControlEvents: UIControlEvents.TouchUpInside)
        let rightBarButtonShare = UIBarButtonItem(customView: buttonShare)
        
        self.navigationItem.setRightBarButtonItems([rightBarButtonSave, rightBarButtonShare], animated: true)
    }
    
    func shareButtonAction() {
        println("Share Button tapped")
    }
    
    func saveButtonAction() {
        println("Save Button tapped")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addShareSaveButtonsToRightNav()
        
        self.textView.textContainerInset = UIEdgeInsetsMake(0, 12, 16, 12)
        self.textView.scrollRangeToVisible(NSMakeRange(0, 0))
        
        var boldAttribute = [NSFontAttributeName: UIFont.boldSystemFontOfSize(14)]
        var regularAttribute = [NSFontAttributeName: UIFont.systemFontOfSize(14)]
        
        var linebreakAttribute = [NSFontAttributeName: UIFont.systemFontOfSize(8)]
        var linebreakText = NSMutableAttributedString(string: "\n", attributes: linebreakAttribute)
        
        var attributedText = NSMutableAttributedString(string: "")
        
        var overallRatingLabel = NSMutableAttributedString(string: "Overall Rating: ", attributes: boldAttribute)
        var overallRatingText = NSMutableAttributedString(string: String(selectedFeedback!.overallRating) + "\n", attributes: regularAttribute)
        overallRatingLabel.appendAttributedString(overallRatingText)
        attributedText.appendAttributedString(overallRatingLabel)
        attributedText.appendAttributedString(linebreakText)
        
        var commentsLabel = NSMutableAttributedString(string: "Comments: ", attributes: boldAttribute)
        var commentsText = NSMutableAttributedString(string: selectedFeedback!.comments + "\n", attributes: regularAttribute)
        commentsLabel.appendAttributedString(commentsText)
        attributedText.appendAttributedString(commentsLabel)
        attributedText.appendAttributedString(linebreakText)
        
        var dateTimeLabel = NSMutableAttributedString(string: "Date/Time: ", attributes: boldAttribute)
        var dateTimeText = NSMutableAttributedString(string: "07/23/15 - 7:30 PM" + "\n", attributes: regularAttribute)
        dateTimeLabel.appendAttributedString(dateTimeText)
//        var dateTimeText = NSMutableAttributedString(string: selectedFeedback!.dateTime)
        attributedText.appendAttributedString(dateTimeLabel)
        attributedText.appendAttributedString(linebreakText)
        
        var currentURLLabel = NSMutableAttributedString(string: "CurrentURL: ", attributes: boldAttribute)
        var currentURLText = NSMutableAttributedString(string: selectedFeedback!.currentURL.absoluteString! + "\n", attributes: regularAttribute)
        currentURLLabel.appendAttributedString(currentURLText)
        attributedText.appendAttributedString(currentURLLabel)
        attributedText.appendAttributedString(linebreakText)
        
        var refererLabel = NSMutableAttributedString(string: "Referer: ", attributes: boldAttribute)
        var refererText = NSMutableAttributedString(string: selectedFeedback!.referer.absoluteString! + "\n", attributes: regularAttribute)
        refererLabel.appendAttributedString(refererText)
        attributedText.appendAttributedString(refererLabel)
        attributedText.appendAttributedString(linebreakText)

        var customVarsFullLabel = NSMutableAttributedString(string: "Custom Variables \n", attributes: boldAttribute)
        var objects = selectedFeedback!.customVars.allKeys as! [String]
        objects = (selectedFeedback!.customVars.allKeys as! [String]).sorted(<)
        for var i = 0; i < objects.count; ++i {
            var customVarLabel = NSMutableAttributedString(string: objects[i] + ": ", attributes: boldAttribute)
            var customVarText = NSMutableAttributedString(string: selectedFeedback!.customVars[objects[i]] as! String + "\n", attributes: regularAttribute)
            customVarLabel.appendAttributedString(customVarText)
            customVarsFullLabel.appendAttributedString(customVarLabel)
        }
        attributedText.appendAttributedString(customVarsFullLabel)
        
        self.textView.attributedText = attributedText
        

        
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
