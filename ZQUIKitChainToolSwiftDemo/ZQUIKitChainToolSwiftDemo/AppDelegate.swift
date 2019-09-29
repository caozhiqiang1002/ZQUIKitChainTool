//
//  AppDelegate.swift
//  ZQUIKitChainToolSwiftDemo
//
//  Created by caozhiqiang on 2019/9/26.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
     var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = ViewController()
        self.window?.backgroundColor = .red
        self.window?.makeKeyAndVisible()
        
        return true
    }
}

