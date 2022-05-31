//
//  AppDelegate.swift
//  interfaceModulePoc1
//
//  Created by Fernando Luiz Goulart on 31/05/22.
//

import UIKit
import RouterService

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    let routerService = RouterService()
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.makeKeyAndVisible()
        routerServiceSetup()
        window?.rootViewController = UINavigationController(rootViewController: Feature1ViewController(routerService: routerService))
        return true
    }

    private func routerServiceSetup() {
        routerService.register(routeHandler: Feature1RouteHandler())
        routerService.register(routeHandler: Feature2RouteHandler())
    }
}

