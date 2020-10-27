//
//  AppDelegate.swift
//  BatchUpdateDemo
//
//  Created by Shine on 2020/10/26.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow()
        
        let vc = MusicViewControler(nibName: "MusicViewControler", bundle: nil)
//        let vc = CarListViewController(nibName: "CarListViewController", bundle: nil)


        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        return true
    }

  


}

