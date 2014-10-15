//
//  AppDelegate.swift
//  often-much
//
//  Created by Alexey Patosin on 25/07/14.
//  Copyright (c) 2014 Yandex, LLC. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var i: Float?
    
    func application(application: UIApplication!, didFinishLaunchingWithOptions launchOptions: NSDictionary!) -> Bool {
        // Override point for customization after application launch.
        
        let notificationSettings = UIUserNotificationSettings(forTypes: .Badge, categories: nil)
        application.registerUserNotificationSettings(notificationSettings)
        
        
        application.setMinimumBackgroundFetchInterval(300)
        
        return true
    }
    
    
    func application(application: UIApplication!, performFetchWithCompletionHandler completionHandler: ((UIBackgroundFetchResult) -> Void)!) {
        
        application.applicationIconBadgeNumber++
        
        for i in 0..<1000000 {
            
            self.i = sqrtf(Float(i))
            
        }
        
        NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: "http://ya.ru")) {
            (data, response, error) in
            let length = data.length
            }.resume()
        NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: "http://microsoft.com")) {
            (data, response, error) in
            let length = data.length
            }.resume()
        NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: "http://apple.com")) {
            (data, response, error) in
            let length = data.length
            }.resume()
        NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: "http://yandex.ru")) {
            (data, response, error) in
            let length = data.length
            }.resume()
        NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: "http://lenta.ru")) {
            (data, response, error) in
            let length = data.length
            }.resume()
        NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: "http://news.yandex.ru")) {
            (data, response, error) in
            let length = data.length
            }.resume()
        
        completionHandler(UIBackgroundFetchResult.NewData)
        
    }
    
    func applicationWillResignActive(application: UIApplication!) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(application: UIApplication!) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(application: UIApplication!) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(application: UIApplication!) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(application: UIApplication!) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}

