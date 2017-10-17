//
//  AppDelegate.swift
//  AppearanceTest
//
//  Created by Anton Kashin on 17/10/2017.
//  Copyright © 2017 None. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
    ) -> Bool {
        setupAppearance()
        return true
    }

    private func setupAppearance() {
        UILabel.appearance(
            whenContainedInInstancesOf: [AView.self, BView.self]
        ).textColor = .green
        UILabel.appearance(
            whenContainedInInstancesOf: [InnerView.self, AView.self]
        ).textColor = .red
    }
}

