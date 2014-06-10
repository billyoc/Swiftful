//
//  AppDelegate.swift
//  Swiftful
//
//  Created by Boris Bügling on 10/06/14.
//  Copyright (c) 2014 Boris Bügling. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var client: CDAClient?
    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        self.client = CDAClient(spaceKey:"lzjz8hygvfgu", accessToken:"0c6ef483524b5e46b3bafda1bf355f38f5f40b4830f7599f790a410860c7c271");
        
        var mapViewController = CDAMapViewController();
        mapViewController.client = self.client;
        mapViewController.coordinateFieldIdentifier = "location";
        mapViewController.query = ["content_type": "7ocuA1dfoccWqWwWUY4UY"];
        mapViewController.titleFieldIdentifier = "locationName";
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        self.window!.rootViewController = mapViewController;
        
        return true
    }
    
}

