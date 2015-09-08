//
//  AppDelegate.swift
//  OpinionLabAlerts
//
//  Created by Mitchell Downey on 7/22/15.
//  Copyright (c) 2015 OpinionLab. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        // Alert the user to enable background notifications
        let registerUserNotificationSettings = UIApplication.instancesRespondToSelector("registerUserNotificationSettings:")
        if registerUserNotificationSettings {
            var types: UIUserNotificationType = UIUserNotificationType.Alert | UIUserNotificationType.Sound
            UIApplication.sharedApplication().registerUserNotificationSettings(UIUserNotificationSettings(forTypes: types, categories: nil))
        }
        
        return true
        
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        
        var localNotification = UILocalNotification()
        localNotification.alertAction = "Testing notifications"
        localNotification.alertBody = "You have 5 new unread alerts"
        localNotification.fireDate = NSDate(timeIntervalSinceNow: 3)
        UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
        
        localNotification.alertAction = "Testing notifications"
        localNotification.alertBody = "You have 1 new *urgent* alert"
        localNotification.fireDate = NSDate(timeIntervalSinceNow: 3)
        UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
        
        UIApplication.sharedApplication().applicationIconBadgeNumber = 2
        
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
}

