//
//  AppDelegate.swift
//  UserDemo
//
//  Created by CharlesAE on 10/13/18.
//  Copyright © 2018 LEO Technology. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //Manually create the application window
        window = UIWindow(frame: UIScreen.main.bounds)
        
        //Custom theming on the application
        UIApplication.shared.statusBarStyle = .lightContent
        application.isStatusBarHidden = false
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().tintColor = .white
        
        //Instantiate a navigation controller (nav1) and assign the randomly generated ViewController to it
        let nav1 = UINavigationController()
        nav1.navigationBar.isTranslucent = false
        nav1.navigationBar.barTintColor = .darkGray
        let vc = ViewController()
        nav1.viewControllers = [vc]
        
        //Set nav1 as the window's root viewcontroller
        window?.rootViewController = nav1
        
        //Show the window
        window?.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

