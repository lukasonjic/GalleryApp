//
//  AppDelegate.swift
//  GalleryApp
//
//  Created by Pet Minuta on 06/02/2017.
//  Copyright © 2017 Pet Minuta. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = AlbumsViewController()
        let nc = UINavigationController(rootViewController: viewController)
        window?.rootViewController = nc
        window?.makeKeyAndVisible()
        return true
    }

}

