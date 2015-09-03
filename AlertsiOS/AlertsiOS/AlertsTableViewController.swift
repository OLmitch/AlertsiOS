//
//  AlertsTableViewController.swift
//  
//
//  Created by Mitchell Downey on 7/22/15.
//
//

import UIKit

class AlertsTableViewController: UITableViewController {
    
    var alertsArray = [Alert]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var alertSample1 = Alert(name: "Test alert #1", emailSubject: "This is a test alert #1's subject This is a test alert #1's subject", dateTime: NSDate(), markedAsRead: false)
        var alertSample2 = Alert(name: "Test alert #2", emailSubject: "This is a test alert #2's subject This is a test alert #2's subject", dateTime: NSDate(), markedAsRead: false)
        var alertSample3 = Alert(name: "Test alert #3", emailSubject: "This is a test alert #3's subject This is a test alert #3's subject", dateTime: NSDate(), markedAsRead: false)
        var alertSample4 = Alert(name: "Test alert #4", emailSubject: "This is a test alert #4's subject This is a test alert #4's subject", dateTime: NSDate(), markedAsRead: false)
        var alertSample5 = Alert(name: "Test alert #5", emailSubject: "This is a test alert #5's subject This is a test alert #5's subject", dateTime: NSDate(), markedAsRead: false)
        var alertSample6 = Alert(name: "Test alert #6", emailSubject: "This is a test alert #6's subject This is a test alert #6's subject", dateTime: NSDate(), markedAsRead: false)
        var alertSample7 = Alert(name: "Test alert #7", emailSubject: "This is a test alert #7's subject This is a test alert #7's subject", dateTime: NSDate(), markedAsRead: false)
        var alertSample8 = Alert(name: "Test alert #8", emailSubject: "This is a test alert #8's subject This is a test alert #8's subject", dateTime: NSDate(), markedAsRead: false)
        var alertSample9 = Alert(name: "Test alert #9", emailSubject: "This is a test alert #9's subject This is a test alert #9's subject", dateTime: NSDate(), markedAsRead: false)
        var alertSample10 = Alert(name: "Test alert #10", emailSubject: "This is a test alert #10's subject This is a test alert #10's subject", dateTime: NSDate(), markedAsRead: false)
        
        alertsArray.append(alertSample1)
        alertsArray.append(alertSample2)
        alertsArray.append(alertSample3)
        alertsArray.append(alertSample4)
        alertsArray.append(alertSample5)
        alertsArray.append(alertSample6)
        alertsArray.append(alertSample7)
        alertsArray.append(alertSample8)
        alertsArray.append(alertSample9)
        alertsArray.append(alertSample10)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return alertsArray.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! AlertsTableViewCell
        
        let alert = alertsArray[indexPath.row]
        
        cell.emailSubject?.text = alert.emailSubject
        cell.dateTime?.text = "07/23/15 - 7:30 PM"
        cell.notificationIcon?.text = "\u{f071}"

        return cell
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
        
        if segue.identifier == "Show Feedback List" {
            let feedbackTableViewController = segue.destinationViewController as! FeedbackTableViewController
            
            if let index = self.tableView.indexPathForSelectedRow() {
                feedbackTableViewController.selectedAlert = alertsArray[index.row]
            }
        }
        
    }

}
