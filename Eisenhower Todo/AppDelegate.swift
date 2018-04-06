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
import GoogleSignIn
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes
import IQKeyboardManagerSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, GIDSignInDelegate {
    

    var window: UIWindow?
    var taskDashboardRouter = TaskDashboardRouter()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        IQKeyboardManager.sharedManager().enable = true

        FirebaseApp.configure()
        GIDSignIn.sharedInstance().clientID = "781259626306-i0ft6d4v1s1v6klr5h3mgfveikeqkqq2.apps.googleusercontent.com"
        GIDSignIn.sharedInstance().delegate = self
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
    
    @available(iOS 9.0, *)
    func application(_ application: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any])
        -> Bool {
            return GIDSignIn.sharedInstance().handle(url,
                                                     sourceApplication:options[UIApplicationOpenURLOptionsKey.sourceApplication] as? String,
                                                     annotation: [:])
    }
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error?) {
        // ...
        if let error = error {
            // ...
            print(error)
            return
        }
        
        guard let authentication = user.authentication else { return }
        let credential = GoogleAuthProvider.credential(withIDToken: authentication.idToken,
                                                       accessToken: authentication.accessToken)
        // ...

        /*Auth.auth().signIn(with: credential) { (user, error) in
            if let error = error {
                // ...
                return
            }
            // User is signed in
            // ...
            }*/
    }
    
    func sign(_ signIn: GIDSignIn!, didDisconnectWith user: GIDGoogleUser!, withError error: Error!) {
        // Perform any operations when the user disconnects from app here.
        // ...
    }
    
}

