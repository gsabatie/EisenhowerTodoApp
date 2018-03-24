//
//  AppDelegate.swift
//  Eisenhower Todo
//
//  Created by Guillaume Sabatie on 23/02/2018.
//  Copyright © 2018 Guillaume Sabatie. All rights reserved.
//

import UIKit
import Firebase
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FirebaseApp.configure()
        MSAppCenter.start("53b160dd-ce66-4091-a429-20b2d340ea06", withServices:[ MSAnalytics.self, MSCrashes.self ])
               return true
    }
}

