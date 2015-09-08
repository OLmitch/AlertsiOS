//
//  AlertsWebViewController.swift
//  AlertsiOS
//
//  Created by Mitchell Downey on 9/7/15.
//  Copyright (c) 2015 Mitchell Downey. All rights reserved.
//

import UIKit

class AlertsWebViewController: UIViewController {
    
    var selectedURL : NSURL!
    
    @IBOutlet weak var webView: UIWebView!
    
    func addBrowserButtonToRightNav() {
        let buttonBrowser = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        buttonBrowser.frame = CGRectMake(0, 0, 58, 40)
        buttonBrowser.setTitle("Browser", forState: UIControlState.Normal)
        buttonBrowser.addTarget(self, action: "browserButtonAction", forControlEvents: UIControlEvents.TouchUpInside)
        let rightBarButtonBrowser = UIBarButtonItem(customView: buttonBrowser)
        
        self.navigationItem.setRightBarButtonItems([rightBarButtonBrowser], animated: true)
    }
    
    func browserButtonAction() {
        println("Browser Button tapped")
    UIApplication.sharedApplication().openURL(webView.request!.URL!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addBrowserButtonToRightNav()
        
        webView.loadRequest(NSURLRequest(URL: selectedURL))
        
        // Do any additional setup after loading the view.
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
