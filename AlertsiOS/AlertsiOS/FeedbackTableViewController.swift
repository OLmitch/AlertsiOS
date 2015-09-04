//
//  FeedbackTableViewController.swift
//  AlertsiOS
//
//  Created by Mitchell Downey on 8/31/15.
//  Copyright (c) 2015 Mitchell Downey. All rights reserved.
//

import UIKit
import QuartzCore

class FeedbackTableViewController: UITableViewController {
    
    var feedbackArray = [Feedback]()
    
    var selectedAlert: Alert?
    
    var sampleURL : NSURL = NSURL(string: "http://www.opinionlab.com")!
    
    var sampleCustomVars: NSDictionary = ["username": "abc123xyz", "tealeafID": "123456790", "omnitureID": "0987654321", "customVariable4": "testing 123", "customVariable5": "etc etc etc"]
    
    var sampleComment = "This is a sample comment. This is a sample comment. This is a sample comment. This is a sample comment. This is a sample comment."
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var ccid : Int = Int()
        var dateTime : NSDate = NSDate()
        var prev : NSURL = NSURL()
        var referer : NSURL = NSURL()
        var currentURL : NSURL = NSURL()
        var oCodeVersion : String = String()
        var customVars : NSObject = NSObject()
        var overallRating : Int = Int()
        var comments : String = String()
        
        var FeedbackSample1 = Feedback(ccid: 12345, dateTime: NSDate(), prev: sampleURL, referer: sampleURL, currentURL: sampleURL, oCodeVersion: "6.0", customVars: sampleCustomVars, overallRating: 5, comments: sampleComment)
        var FeedbackSample2 = Feedback(ccid: 12345, dateTime: NSDate(), prev: sampleURL, referer: sampleURL, currentURL: sampleURL, oCodeVersion: "6.0", customVars: sampleCustomVars, overallRating: 5, comments: sampleComment)
        var FeedbackSample3 = Feedback(ccid: 12345, dateTime: NSDate(), prev: sampleURL, referer: sampleURL, currentURL: sampleURL, oCodeVersion: "6.0", customVars: sampleCustomVars, overallRating: 5, comments: sampleComment)
        var FeedbackSample4 = Feedback(ccid: 12345, dateTime: NSDate(), prev: sampleURL, referer: sampleURL, currentURL: sampleURL, oCodeVersion: "6.0", customVars: sampleCustomVars, overallRating: 5, comments: sampleComment)
        var FeedbackSample5 = Feedback(ccid: 12345, dateTime: NSDate(), prev: sampleURL, referer: sampleURL, currentURL: sampleURL, oCodeVersion: "6.0", customVars: sampleCustomVars, overallRating: 5, comments: sampleComment)
        var FeedbackSample6 = Feedback(ccid: 12345, dateTime: NSDate(), prev: sampleURL, referer: sampleURL, currentURL: sampleURL, oCodeVersion: "6.0", customVars: sampleCustomVars, overallRating: 5, comments: sampleComment)
        var FeedbackSample7 = Feedback(ccid: 12345, dateTime: NSDate(), prev: sampleURL, referer: sampleURL, currentURL: sampleURL, oCodeVersion: "6.0", customVars: sampleCustomVars, overallRating: 5, comments: sampleComment)
        var FeedbackSample8 = Feedback(ccid: 12345, dateTime: NSDate(), prev: sampleURL, referer: sampleURL, currentURL: sampleURL, oCodeVersion: "6.0", customVars: sampleCustomVars, overallRating: 5, comments: sampleComment)
        var FeedbackSample9 = Feedback(ccid: 12345, dateTime: NSDate(), prev: sampleURL, referer: sampleURL, currentURL: sampleURL, oCodeVersion: "6.0", customVars: sampleCustomVars, overallRating: 5, comments: sampleComment)
        var FeedbackSample10 = Feedback(ccid: 12345, dateTime: NSDate(), prev: sampleURL, referer: sampleURL, currentURL: sampleURL, oCodeVersion: "6.0", customVars: sampleCustomVars, overallRating: 5, comments: sampleComment)

        
        feedbackArray.append(FeedbackSample1)
        feedbackArray.append(FeedbackSample2)
        feedbackArray.append(FeedbackSample3)
        feedbackArray.append(FeedbackSample4)
        feedbackArray.append(FeedbackSample5)
        feedbackArray.append(FeedbackSample6)
        feedbackArray.append(FeedbackSample7)
        feedbackArray.append(FeedbackSample8)
        feedbackArray.append(FeedbackSample9)
        feedbackArray.append(FeedbackSample10)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell = tableView.dequeueReusableCellWithIdentifier("HeaderCell") as! FeedbackHeaderTableViewCell
        
        headerCell.emailSubject?.text = selectedAlert!.emailSubject
        headerCell.dateTime?.text = "07/23/15 - 7:30 PM"
        headerCell.tintColor = UIColor.redColor()
        
//        headerCell.layer.borderWidth = 0.5
//        headerCell.layer.borderColor = UIColor.grayColor().CGColor
        
        return headerCell
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 80
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return feedbackArray.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! FeedbackTableViewCell

        // Configure the cell...
        
        let feedback = feedbackArray[indexPath.row]
        
        cell.comments?.text = feedback.comments
        cell.dateTime?.text = "07/23/15 - 7:30 PM"
        cell.referer?.text = "http://www.opinionlab.com"
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 110
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "Show Feedback" {
            let feedbackViewController = segue.destinationViewController as! FeedbackViewController
            
            if let index = self.tableView.indexPathForSelectedRow() {
                feedbackViewController.selectedFeedback = feedbackArray[index.row]
                feedbackViewController.selectedAlert = selectedAlert
            }
        }
        
    }

}
