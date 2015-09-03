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
    
    @IBOutlet weak var alertEmailSubject: UILabel!
    @IBOutlet weak var alertDateTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        alertEmailSubject.text = selectedFeedback!.comments
        alertDateTime.text = "07/23/15 - 7:30 PM"
        
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
