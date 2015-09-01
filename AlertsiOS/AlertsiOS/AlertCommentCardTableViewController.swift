//
//  AlertsSummaryTableViewController.swift
//  AlertsiOS
//
//  Created by Mitchell Downey on 8/31/15.
//  Copyright (c) 2015 Mitchell Downey. All rights reserved.
//

import UIKit
import QuartzCore

class AlertCommentCardTableViewController: UITableViewController {
    
    var alertCommentCardArray = [AlertCommentCard]()
    
    var selectedAlert: Alert!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var alertCommentCardSample1 = AlertCommentCard(name: "Test alert #1", emailSubject: "This is a test alert #1's subject", dateTime: NSDate(), markedAsRead: false)
        var alertCommentCardSample2 = AlertCommentCard(name: "Test alert #2", emailSubject: "This is a test alert #2's subject", dateTime: NSDate(), markedAsRead: false)
        var alertCommentCardSample3 = AlertCommentCard(name: "Test alert #3", emailSubject: "This is a test alert #3's subject", dateTime: NSDate(), markedAsRead: false)
        var alertCommentCardSample4 = AlertCommentCard(name: "Test alert #4", emailSubject: "This is a test alert #4's subject", dateTime: NSDate(), markedAsRead: false)
        var alertCommentCardSample5 = AlertCommentCard(name: "Test alert #5", emailSubject: "This is a test alert #5's subject", dateTime: NSDate(), markedAsRead: false)
        
        alertCommentCardArray.append(alertCommentCardSample1)
        alertCommentCardArray.append(alertCommentCardSample2)
        alertCommentCardArray.append(alertCommentCardSample3)
        alertCommentCardArray.append(alertCommentCardSample4)
        alertCommentCardArray.append(alertCommentCardSample5)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell = tableView.dequeueReusableCellWithIdentifier("HeaderCell") as! AlertCommentCardHeaderTableViewCell
        
        headerCell.emailSubject?.text = selectedAlert.emailSubject
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
        return alertCommentCardArray.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell

        // Configure the cell...

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
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }

}
