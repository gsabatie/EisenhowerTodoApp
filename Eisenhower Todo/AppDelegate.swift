//
//  AppDelegate.swift
//  Eisenhower Todo
//
//  Created by Guillaume Sabatie on 23/02/2018.
//  Copyright © 2018 Guillaume Sabatie. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var taskDashboardRouter = TaskDashboardRouter()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FirebaseApp.configure()
        MSAppCenter.start("53b160dd-ce66-4091-a429-20b2d340ea06", withServices:[ MSAnalytics.self, MSCrashes.self ])
        if Auth.auth().currentUser != nil {
            window = UIWindow.init(frame: UIScreen.main.bounds)
            guard  let window = window else {
                return  true
            }
            let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            window.rootViewController = storyboard.instantiateViewController(withIdentifier: kMainNavigationController)
        } else {
        }



        return true
    }
}

